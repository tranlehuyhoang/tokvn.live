<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SiteSetting extends Model
{
    use HasFactory;

    protected $fillable = [
        'status',
        'title',           // Thêm trường tiêu đề
        'content',         // Thêm trường nội dung
        'maintenance_time' // Thêm trường thời gian
    ];
}
