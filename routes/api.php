<?php

use App\Http\Controllers\CourseApiController;
use App\Http\Controllers\DutyApiController;
use App\Http\Controllers\PostApiController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GeminiApiController;

Route::post('/ask-chatbot', [GeminiApiController::class, 'handle']);
Route::get('/courses', [CourseApiController::class, 'index']);
Route::get('/posts', [PostApiController::class, 'getPostsWithSearch']);
Route::get('/duties', [DutyApiController::class, 'index']);