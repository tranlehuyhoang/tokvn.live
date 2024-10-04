<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AccessLog extends Model
{
    use HasFactory;

    protected $fillable = [
        'date',
        'hour',
        'visit_count',
    ];

    /**
     * Nếu bạn muốn làm việc với các thuộc tính datetime, 
     * bạn có thể thêm vào đây.
     */
    protected $dates = [
        'date',
    ];
}