<?php

use App\Http\Controllers\CourseApiController;
use App\Http\Controllers\PostApiController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PdfGeminiController;

Route::post('/ask-pdf', [PdfGeminiController::class, 'handle']);
Route::get('/courses', [CourseApiController::class, 'index']);
Route::get('/posts', [PostApiController::class, 'getPostsWithSearch']);