<?php

use App\Livewire\About;
use App\Livewire\Home;
use App\Livewire\Privacy;
use App\Livewire\Rules;
use App\Livewire\Upgrade;
use Illuminate\Support\Facades\Route;

Route::get('/', Home::class);
Route::get('/about', About::class);
Route::get('/privacy', Privacy::class);
Route::get('/rules', Rules::class);
Route::get('/upgrade', action: Upgrade::class);