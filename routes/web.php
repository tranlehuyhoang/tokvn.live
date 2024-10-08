<?php

use App\Http\Middleware\CheckMaintenanceMode;
use App\Livewire\About;
use App\Livewire\Home;
use App\Livewire\HomeNew;
use App\Livewire\Maintenance;
use App\Livewire\Privacy;
use App\Livewire\Rules;
use App\Livewire\Upgrade;
use Illuminate\Support\Facades\Route;

    Route::get('/', action: Home::class);
    Route::get('/about', About::class);
    Route::get('/privacy', Privacy::class);
    Route::get('/rules', Rules::class);
    Route::get('/upgrade', Upgrade::class);
    Route::get('/home', HomeNew::class);
