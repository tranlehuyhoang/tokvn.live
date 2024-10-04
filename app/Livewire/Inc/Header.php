<?php

namespace App\Livewire\Inc;

use Livewire\Component;
use App\Models\AccessLog; // Import model AccessLog
use Carbon\Carbon; // Import Carbon để làm việc với ngày giờ

class Header extends Component
{
    public function mount()
    {
        $this->logAccess();
    }

    public function logAccess()
    {
        $now = Carbon::now();
        $date = $now->toDateString();
        $hour = $now->hour;

        AccessLog::updateOrCreate(
            ['date' => $date, 'hour' => $hour],
            ['visit_count' => \DB::raw('visit_count + 1')]
        );
    }

    public function render()
    {
        return view('livewire.inc.header');
    }
}