<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\SiteSetting;

class Home extends Component
{
    public $isMaintenanceMode = false;
    public $title;
    public $content;
    public $maintenanceTime;

    public function mount()
    {
        // Lấy bản ghi đầu tiên từ bảng site_settings và kiểm tra trạng thái
        $siteSetting = SiteSetting::first();
    
        // Kiểm tra nếu trạng thái là 'bảo trì'
        if ($siteSetting && $siteSetting->status === 'bảo trì') {
            $this->isMaintenanceMode = true;
            $this->title = $siteSetting->title; // Lấy tiêu đề
            $this->content = $siteSetting->content; // Lấy nội dung
    
            // Chuyển đổi maintenance_time thành đối tượng DateTime nếu nó không phải là null
            $this->maintenanceTime = $siteSetting->maintenance_time ? \Carbon\Carbon::parse($siteSetting->maintenance_time) : null;
        }
    }
    

    public function render()
    {
        return view('livewire.home');
    }
}
