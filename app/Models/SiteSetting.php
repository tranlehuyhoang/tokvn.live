<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SiteSetting extends Model
{
    use HasFactory;

    protected $fillable = [
        'status',
        'title',                 // Thêm trường tiêu đề
        'content',               // Thêm trường nội dung
        'maintenance_time',      // Thêm trường thời gian
        'about',                 // Thêm trường nội dung giới thiệu
        'privacy_policy_image',  // Thêm trường ảnh chính sách bảo mật
        'privacy_policy_content',// Thêm trường nội dung chính sách bảo mật
        'terms_image',           // Thêm trường ảnh điều khoản dịch vụ
        'terms_content',         // Thêm trường nội dung điều khoản dịch vụ
        'enable_upgrade',         // Thêm trường bật/tắt nâng cấp
        'type' ,        // Thêm trường bật/tắt nâng cấp
        'video'  ,       // Thêm trường bật/tắt nâng cấp
        'image' ,        // Thêm trường bật/tắt nâng cấp
    ];
}
