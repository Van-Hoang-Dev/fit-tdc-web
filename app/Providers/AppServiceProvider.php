<?php

namespace App\Providers;

use Illuminate\Support\Facades\Route;
use Illuminate\Support\ServiceProvider;
use Statamic\Statamic;
use Statamic\Events\EntryCreated;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\URL;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // Statamic::vite('app', [
        //     'resources/js/cp.js',
        //     'resources/css/cp.css',
        // ]);

        if ( env('APP_ENV') === 'production' && (request()->server('HTTPS') === 'on' || request()->server('HTTP_X_FORWARDED_PROTO') === 'https') ) { URL::forceScheme('https'); }

         Route::prefix('api')
        ->middleware('api') // 👈 dùng middleware API (không CSRF)
        ->group(base_path('routes/api.php'));
    }
}
