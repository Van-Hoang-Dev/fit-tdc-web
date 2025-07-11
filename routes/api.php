<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PdfGeminiController;

Route::post('/ask-pdf', [PdfGeminiController::class, 'handle']);