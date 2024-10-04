<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SiteSettingResource\Pages;
use App\Filament\Resources\SiteSettingResource\RelationManagers;
use App\Models\SiteSetting;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SiteSettingResource extends Resource
{
    protected static ?string $model = SiteSetting::class;

    protected static ?string $navigationIcon = 'heroicon-o-cog';
    protected static ?string $navigationLabel = 'Cài đặt trang';
    protected static ?string $pluralModelLabel = 'Cài đặt trang';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                // Section 1: Thông tin trạng thái (Collapsible)
                Forms\Components\Section::make('Thông tin trạng thái')
                    ->schema([
                        Forms\Components\Select::make('status')
                            ->label('Trạng thái')
                            ->options([
                                'hoạt động' => 'Hoạt động',
                                'bảo trì' => 'Bảo trì',
                            ])
                            ->required(),
                    ])
                    ->collapsible(), // Section có thể đóng mở
        
                // Section 2: Thông tin bảo trì (Collapsible)
                Forms\Components\Section::make('Thông tin bảo trì')
                    ->schema([
                        Forms\Components\TextInput::make('title')
                            ->label('Tiêu đề')
                            ->placeholder('Nhập tiêu đề thông báo bảo trì')
                            ->required()
                            ->maxLength(255),
    
                        Forms\Components\RichEditor::make('content')
                            ->label('Nội dung')
                            ->placeholder('Nhập nội dung thông báo bảo trì')
                            ->required(),
    
                        Forms\Components\DateTimePicker::make('maintenance_time')
                            ->label('Thời gian bảo trì')
                            ->required(),
                    ])
                    ->collapsible(), // Section có thể đóng mở
        
                // Section 3: Giới thiệu và Chính sách bảo mật (Collapsible)
                Forms\Components\Section::make('Giới thiệu & Chính sách bảo mật')
                    ->schema([
                        Forms\Components\RichEditor::make('about')
                            ->label('Giới thiệu')
                            ->placeholder('Nhập nội dung giới thiệu về trang web')
                            ->required(),
    
                        Forms\Components\FileUpload::make('privacy_policy_image')
                            ->label('Ảnh chính sách bảo mật')
                            ->image()
                            ->directory('privacy-policy-images'),
    
                        Forms\Components\RichEditor::make('privacy_policy_content')
                            ->label('Nội dung chính sách bảo mật')
                            ->placeholder('Nhập nội dung chính sách bảo mật')
                            ->required(),
                    ])
                    ->collapsible(), // Section có thể đóng mở
        
                // Section 4: Điều khoản dịch vụ và Nâng cấp (Collapsible)
                Forms\Components\Section::make('Điều khoản & Nâng cấp')
                    ->schema([
                        Forms\Components\FileUpload::make('terms_image')
                            ->label('Ảnh điều khoản dịch vụ')
                            ->image()
                            ->directory('terms-images'),
    
                        Forms\Components\RichEditor::make('terms_content')
                            ->label('Nội dung điều khoản dịch vụ')
                            ->placeholder('Nhập nội dung điều khoản dịch vụ')
                            ->required(),
    
                        Forms\Components\Toggle::make('enable_upgrade')
                            ->label('Bật/Tắt nâng cấp')
                            ->inline(false),
                    ])
                    ->collapsible(), // Section có thể đóng mở
            ]);
    }
    
    
    public static function table(Table $table): Table
    {
        return $table
        ->columns([
            Tables\Columns\TextColumn::make('status')->label('Trạng thái'),
            Tables\Columns\TextColumn::make('created_at')->label('Ngày tạo')->dateTime(),
            Tables\Columns\TextColumn::make('updated_at')->label('Cập nhật lúc')->dateTime(),
        ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSiteSettings::route('/'),
            'create' => Pages\CreateSiteSetting::route('/create'),
            'edit' => Pages\EditSiteSetting::route('/{record}/edit'),
        ];
    }
}
