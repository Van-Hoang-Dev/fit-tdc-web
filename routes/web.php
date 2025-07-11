<?php

use App\Http\Controllers\CourseApiController;
use App\Http\Controllers\PdfGeminiController;
use Illuminate\Support\Facades\Route;

// Route::statamic('example', 'example-view', [
//    'title' => 'Example'
// ]);

// API
Route::get('/api/courses', [CourseApiController::class, 'index']);



// ROUTE
Route::statamic('/dao-tao/{course}/{program}', function (){
    return view ('programs.show');
} );