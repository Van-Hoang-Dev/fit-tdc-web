<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Smalot\PdfParser\Parser;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Cache;
use Statamic\Facades\GlobalSet;

class GeminiApiController extends Controller
{
    // public function handle(Request $request)
    // {

    //     $question = $request->input('question');
    //     if (!$question) {
    //         return response()->json(['error' => 'Thiếu câu hỏi.'], 400);
    //     }

    //     $pdfPath = public_path('assets/chatbot-docs/chatbot.pdf');

    //     // Check file exist
    //     if (!file_exists($pdfPath)) {
    //         return response()->json(['error' => 'Không tìm thấy file PDF.'], 404);
    //     }

    //     try {
    //         $modifiedTime = filemtime($pdfPath);
    //         $cacheKey = 'chatbot_pdf_text_' . $modifiedTime;

    //         $pdfText = Cache::remember($cacheKey, 60 * 60, function () use ($pdfPath) {
    //             $parser = new Parser();
    //             $text = $parser->parseFile($pdfPath)->getText();
    //             $text = mb_convert_encoding($text, 'UTF-8', 'UTF-8');
    //             $text = substr($text, 0, 12000); // cắt bớt nếu quá dài

    //             if (!mb_check_encoding($text, 'UTF-8')) {
    //                 return response()->json(['error' => 'Nội dung PDF không phải UTF-8.'], 500);
    //             }

    //             return $text;
    //         });
    //     } catch (\Exception $e) {
    //         return response()->json(['error' => 'Lỗi khi xử lý PDF.'], 500);
    //     }

    //     // Call Gemini
    //     $globals = GlobalSet::findByHandle('gemini_api')->inDefaultSite();
    //     $apiKey = $globals->get('api_key');
    //     Log::info('✅ Gemini Key', [$apiKey]);

    //     if (!$apiKey) {
    //         return response()->json(['error' => 'Chưa có API KEY cho Gemini trong .env'], 500);
    //     }

    //     $prompt = <<<EOD
    // Câu hỏi: "{$question}"
    // Hãy đóng vai thành người hỗ trợ tư vấn cho khoa công nghệ thông tin. Chào hỏi thân thiện.   
    // Trong trường hợp liên quan đến trường thì hãy tham khảo nội dung có trong tài liệu để trả lời. Nếu không có trong tài liệu hãy tra cứu trên google để trả lời. Format câu trả lời dễ nhìn và làm cho sinh động hơn bằng icon.

    // Dưới đây là nội dung tài liệu PDF:

    // \"\"\"
    // {$pdfText}
    // \"\"\"
    // EOD;

    //     try {
    //         $response = Http::withHeaders([
    //             'Content-Type' => 'application/json',
    //         ])->post("https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key={$apiKey}", [
    //             'contents' => [
    //                 ['parts' => [['text' => $prompt]]]
    //             ]
    //         ]);

    //         $json = $response->json();
    //         $answer = $json['candidates'][0]['content']['parts'][0]['text'] ?? 'Xin lỗi, mình chưa có câu trả lời cho bạn lúc này. Bạn thử hỏi lại theo cách khác nhé!';
    //         return response()->json(['answer' => $answer]);
    //     } catch (\Exception $e) {
    //         return response()->json(['error' => 'Lỗi gọi Gemini API.'], 500);
    //     }
    // }


    // Xử lý yêu cầu từ người dùng, lấy câu hỏi, phân tích file PDF, tạo prompt và gọi Gemini API.
    public function handle(Request $request)
    {
        // 1. Lấy câu hỏi từ yêu cầu
        $question = $request->input('question');
        if (!$question) {
            return response()->json(['error' => 'Thiếu câu hỏi.'], 400);
        }

        // 2. Xác định đường dẫn đến file PDF tài liệu chatbot
         $globals = \Statamic\Globals\GlobalSet::findByHandle('chatbot_doc')->inDefaultSite();
        $docPath = $globals->get('document');
        $pdfPath = public_path('assets/'. $docPath);

        if (!file_exists($pdfPath)) {
            return response()->json(['error' => 'Không tìm thấy file PDF.'], 404);
        }

        // 3. Trích xuất nội dung văn bản từ file PDF
        try {
            $pdfText = $this->getPdfText($pdfPath);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Lỗi khi xử lý PDF.'], 500);
        }

        // 4. Tạo prompt để gửi đến Gemini dựa trên câu hỏi và nội dung PDF
        $prompt = $this->buildPrompt($question, $pdfText);

        try {
            // 5. Gọi API Gemini, có hỗ trợ fallback nhiều API key nếu bị lỗi
            $result = $this->callGeminiWithFallback($prompt);

            // 6. Kiểm tra kết quả trả về từ Gemini
            if (isset($result['error']) && $result['error']) {
                return response()->json(['error' => $result['message']], 500);
            }

            // 7. Trích xuất câu trả lời từ phản hồi
            $answer = $result['candidates'][0]['content']['parts'][0]['text'] ?? 'Xin lỗi, mình chưa có câu trả lời cho bạn lúc này. Bạn thử hỏi lại theo cách khác nhé!';
            return response()->json(['answer' => $answer]);
        } catch (\Exception $e) {
            Log::error('Lỗi gọi Gemini API: ' . $e->getMessage());
            return response()->json(['error' => 'Lỗi gọi Gemini API.'], 500);
        }
    }

    // Hàm chuyển nội dung pdf thành text
    private function getPdfText($pdfPath)
    {
        $modifiedTime = filemtime($pdfPath);
        $cacheKey = 'chatbot_pdf_text_' . $modifiedTime;

        return Cache::remember($cacheKey, 60 * 60, function () use ($pdfPath) {
            $parser = new Parser();
            $text = $parser->parseFile($pdfPath)->getText();
            $text = mb_convert_encoding($text, 'UTF-8', 'UTF-8');
            $text = substr($text, 0, 12000);
            if (!mb_check_encoding($text, 'UTF-8')) {
                throw new \Exception('PDF không phải UTF-8');
            }
            return $text;
        });
    }


    // Hàm tạo Prompt cho chatbot
    private function buildPrompt($question, $pdfText)
    {
        $globals = GlobalSet::find('chatbot_prompt')->in('default');
        $template = $globals->get('prompt_template');
        $finalPrompt = str_replace(
            ['{question}', '{pdfText}'],
            [$question, $pdfText],
            $template
        );
        return $finalPrompt;
    }

    // Hàm lấy Key có thể sử dụng được
    function callGeminiWithFallback($prompt)
    {
        $globals = \Statamic\Globals\GlobalSet::findByHandle('gemini_api')->inDefaultSite();
        $apiKeys = $globals->get('api_keys');

        foreach ($apiKeys as $apiKeyItem) {
            $apiKey = $apiKeyItem['api_key'];
            $response = self::sendRequestToGemini($apiKey, $prompt);

            // Nếu phản hồi hợp lệ, trả về luôn
            if ($response['success']) {
                return $response['data'];
            }

            // Nếu lỗi, thử key tiếp theo
            // Log::info('✅ Lỗi Key ', [$apiKey]);
        }

        // Nếu không key nào thành công
        return [
            'error' => true,
            'message' => 'Tất cả các API key đều không hoạt động.',
        ];
    }

    // Hàm gửi yêu cầu đến Gemini Api
    private function sendRequestToGemini($apiKey, $prompt)
    {
        try {
            $client = new \GuzzleHttp\Client();
            $response = $client->post('https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent', [
                'query' => ['key' => $apiKey],
                'json' => [
                    'contents' => [
                        [
                            'parts' => [['text' => $prompt]],
                        ]
                    ]
                ],
                'timeout' => 100,
            ]);

            $body = json_decode($response->getBody(), true);
            return ['success' => true, 'data' => $body];
        } catch (\Exception $e) {
            // Bạn có thể log lỗi tại đây nếu cần
            return ['success' => false, 'error' => $e->getMessage()];
        }
    }
}
