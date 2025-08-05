<?php

namespace App\Listeners;

use Illuminate\Support\Facades\Log;
use Intervention\Image\Facades\Image;
use Statamic\Events\AssetSaving;
use Statamic\Facades\GlobalSet;

class ResizeUploadedImage
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(AssetSaving $event): void
    {
        $globals = GlobalSet::find('config_image')->in('default');

        $resize_width = (int) $globals->get('resize_width') ?? 1280;
        $quality = (int) $globals->get('quality') ?? 100;
        $max_file_size = ((float) $globals->get('max_file_size') ?? 5) * 1024 * 1024;
        $allowed_extensions = $globals->get('allowed_extensions');

        $asset = $event->asset;

        // Kiểm tra định dạng ảnh
        if (!in_array($asset->extension(), $allowed_extensions)) {
            return;
        }

        // Kiểm tra nếu dung lượng
        if ($asset->size() > $max_file_size) {
            $path = $asset->resolvedPath();

            try {
                // Log::info('Asset size lớn hơn 3MB. Bắt đầu resize.', ['path' => $path, 'size' => $asset->size(), 'asset->extension' => $asset->extension()]);

                // Resize ảnh
                $image = Image::make($path)
                    ->resize($resize_width, null, function ($constraint) {
                        $constraint->aspectRatio();
                        // Không phóng to ảnh nhỏ
                        $constraint->upsize();
                    });

                $image->save($path, $quality);

                // Log::info('Resize ảnh thành công.', ['path' => $path, 'new_size' => filesize($path)]);
            } catch (\Exception $e) {
                Log::error('Lỗi khi resize ảnh: ' . $e->getMessage());
            }
        }
    }
}
