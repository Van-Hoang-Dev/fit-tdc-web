<?php

namespace App\Providers;

use App\Listeners\ResizeUploadedImage;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\ServiceProvider;
use Statamic\Events\AssetSaving;

class EventServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
         Event::listen(
            AssetSaving::class,
            [ResizeUploadedImage::class, 'handle']
        );
    }

}
