<?php

namespace App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Statamic\Events\EntrySaved;

class SetDefaultCodeAreaForLandingPage
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
    public function handle(EntrySaved $event)
    {
        $entry = $event->entry;

        // Chỉ áp dụng cho collection "landing_pages"
        if ($entry->collectionHandle() !== 'landing_pages') {
            return;
        }

        // Nếu đã có nội dung rồi thì không ghi đè
        if ($entry->get('code_area')) {
            return;
        }

        // Gán nội dung mặc định
        $entry->set('code_area', '<h2>🚀 Trang Landing Page đã sẵn sàng!</h2>');

        // Lưu lại entry (chỉ nếu bạn chắc chắn không tạo vòng lặp)
        $entry->save();
    }
}
