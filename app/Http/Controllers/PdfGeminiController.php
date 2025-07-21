<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Smalot\PdfParser\Parser;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Cache;

class PdfGeminiController extends Controller
{
    // public function  handle(Request $request)
    // {
    //     Log::info('👉 Nhận yêu cầu từ client', [ $request->input('question')]);

    //     $question = $request->input('question');
    //     if (!$question) {
    //         Log::warning('❌ Thiếu câu hỏi từ request');
    //         return response()->json(['error' => 'Thiếu câu hỏi.'], 400);
    //     }

    //     $pdfPath = public_path('assets/chatbot-docs/chatbot.pdf');
    //     Log::info("📄 Đường dẫn file PDF: $pdfPath");

    //     // Check file exists 
    //     if (!file_exists($pdfPath)) {
    //         return response()->json(['error' => 'Không tìm thấy file PDF.'], 404);
    //     }

    //     try {
    //         $parse = new Parser();
    //         $pdfText = $parse->parseFile($pdfPath)->getText();
    //         $pdfText = mb_convert_encoding($pdfText, 'UTF-8', 'UTF-8');
    //         $pdfText = substr($pdfText, 0, 12000);
    //         if (!mb_check_encoding($pdfText, 'UTF-8')) {
    //             Log::warning('⚠️ Nội dung PDF không phải UTF-8');
    //         }
    //     } catch (\Exception $e) {
    //          Log::error('❌ Lỗi khi đọc PDF: ' . $e->getMessage());
    //         return response()->json(['error' => 'Lỗi khi đọc PDF.'], 500);
    //     }
       

    //     //  Call Gemini
    //     $apiKey = env('GEMINI_API_KEY');
    //     if (!$apiKey) {
    //     Log::error('❌ Chưa có API KEY cho Gemini trong .env');
    //     return response()->json(['error' => 'Thiếu API key.'], 500);
    // }
    
    //     $prompt = <<<EOD
    //                 Câu hỏi: "{$question}
    //                  Hãy đóng vai thành người hỗ trợ tư vấn cho khoa công nghệ thông tin. Chào hỏi thân thiện.   
    //                 Trong trường hợp liên quan đến trường thì hãy tham khảm nội dung có trong tài liệu để trả lời. Nếu không có trong tài liệu hãy hãy tra cứu trên google để trả lời. Format câu trả lời dễ nhìn và làm cho sinh động hơn bằng icon.
    //                 Dưới đây là nội dung tài liệu PDF:

    //                 \"\"\"
    //                 {$pdfText}
    //                 \"\"\"
    //                 EOD;


    //     try {
    //     $response = Http::withHeaders([
    //         'Content-Type' => 'application/json',
    //     ])->post("https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key={$apiKey}", [
    //         'contents' => [
    //             ['parts' => [['text' => $prompt]]]
    //         ]
    //     ]);

    //     $json = $response->json();
    //     Log::info('✅ Nhận phản hồi từ Gemini', $json);

    //     $answer = $json['candidates'][0]['content']['parts'][0]['text'] ?? 'Không có phản hồi.';
    //     return response()->json(['answer' => $answer]);
    // } catch (\Exception $e) {
    //     Log::error('❌ Lỗi gọi API Gemini: ' . $e->getMessage());
    //     return response()->json(['error' => 'Lỗi gọi Gemini API.'], 500);
    // }
    // }

    public function handle(Request $request)
{
    
    $question = $request->input('question');
    if (!$question) {
        return response()->json(['error' => 'Thiếu câu hỏi.'], 400);
    }

    $pdfPath = public_path('assets/chatbot-docs/chatbot.pdf');

    // Check file exist
    if (!file_exists($pdfPath)) {
        return response()->json(['error' => 'Không tìm thấy file PDF.'], 404);
    }

    try {
        $modifiedTime = filemtime($pdfPath);
        $cacheKey = 'chatbot_pdf_text_' . $modifiedTime;

        $pdfText = Cache::remember($cacheKey, 60 * 60, function () use ($pdfPath) {
            $parser = new Parser();
            $text = $parser->parseFile($pdfPath)->getText();
            $text = mb_convert_encoding($text, 'UTF-8', 'UTF-8');
            $text = substr($text, 0, 12000); // cắt bớt nếu quá dài

            if (!mb_check_encoding($text, 'UTF-8')) {
                return response()->json(['error' => 'Nội dung PDF không phải UTF-8.'], 500);
            }

            return $text;
        });
    } catch (\Exception $e) {
        return response()->json(['error' => 'Lỗi khi xử lý PDF.'], 500);
    }

    // Call Gemini
    $apiKey = env('GEMINI_API_KEY');
    if (!$apiKey) {
        return response()->json(['error' => 'Chưa có API KEY cho Gemini trong .env'], 500);
    }

    $prompt = <<<EOD
    Câu hỏi: "{$question}"
    Hãy đóng vai thành người hỗ trợ tư vấn cho khoa công nghệ thông tin. Chào hỏi thân thiện.   
    Trong trường hợp liên quan đến trường thì hãy tham khảo nội dung có trong tài liệu để trả lời. Nếu không có trong tài liệu hãy tra cứu trên google để trả lời. Format câu trả lời dễ nhìn và làm cho sinh động hơn bằng icon.

    Dưới đây là nội dung tài liệu PDF:

    \"\"\"
    {$pdfText}
    \"\"\"
    EOD;

    try {
        $response = Http::withHeaders([
            'Content-Type' => 'application/json',
        ])->post("https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key={$apiKey}", [
            'contents' => [
                ['parts' => [['text' => $prompt]]]
            ]
        ]);

        $json = $response->json();
        $answer = $json['candidates'][0]['content']['parts'][0]['text'] ?? 'Xin lỗi, mình chưa có câu trả lời cho bạn lúc này. Bạn thử hỏi lại theo cách khác nhé!';
        return response()->json(['answer' => $answer]);
        
    } catch (\Exception $e) {
        return response()->json(['error' => 'Lỗi gọi Gemini API.'], 500);
    }
}
}
