<?php

namespace App\Filament\Widgets;

use Filament\Widgets\ChartWidget;
use App\Models\AccessLog;
use Carbon\Carbon;

class AccessLogChart extends ChartWidget
{
    protected static ?string $heading = 'Lượt truy cập theo giờ';

    protected function getData(): array
    {
        // Lấy ngày mới nhất
        $latestDate = AccessLog::latest('date')->first()->date;

        // Lấy dữ liệu lượt truy cập cho ngày mới nhất
        $accessLogs = AccessLog::whereDate('date', $latestDate)
            ->orderBy('hour')
            ->get();

        // Tạo mảng giờ và khởi tạo giá trị 0 cho mỗi giờ
        $hours = range(0, 23); // Từ 0 đến 23
        $visitCounts = array_fill(0, 24, 0); // Khởi tạo mảng với 24 giá trị 0

        // Gán lượt truy cập vào mảng dựa trên giờ
        foreach ($accessLogs as $log) {
            $hourIndex = (int) $log->hour; // Chuyển đổi giờ thành chỉ số
            $visitCounts[$hourIndex] = $log->visit_count; // Gán giá trị lượt truy cập
        }

        return [
            'labels' => $hours,
            'datasets' => [
                [
                    'label' => 'Lượt truy cập',
                    'data' => $visitCounts,
                    'backgroundColor' => 'rgba(75, 192, 192, 0.2)',
                    'borderColor' => 'rgba(75, 192, 192, 1)',
                    'borderWidth' => 1,
                ],
            ],
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }
    protected function getContainerClasses(): string
    {
        return 'w-full'; // Đảm bảo widget chiếm 100% chiều rộng
    }
}