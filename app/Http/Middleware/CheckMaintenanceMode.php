<?php

namespace App\Http\Middleware;

use App\Models\SiteSetting;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckMaintenanceMode
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next)
    {
        // Giả sử bạn có một bảng `site_settings` với trạng thái trang
        $siteSetting = SiteSetting::first(); // Lấy bản ghi đầu tiên (hoặc điều chỉnh theo cách bạn lưu cài đặt)

        if ($siteSetting && $siteSetting->status === 'bảo trì') {
            // Chuyển hướng đến trang thông báo bảo trì hoặc từ chối truy cập
            return   redirect('/maintenance');
        }

        return $next($request); // Tiếp tục nếu không trong chế độ bảo trì
    }
}
