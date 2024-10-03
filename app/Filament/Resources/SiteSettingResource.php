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
                Forms\Components\Section::make('Thông tin trạng thái')
                    ->schema([
                        Forms\Components\Select::make('status')
                            ->label('Trạng thái')
                            ->options([
                                'hoạt động' => 'Hoạt động',
                                'bảo trì' => 'Bảo trì',
                            ])
                            ->required(),
                    ]),
    
                Forms\Components\Section::make('Thông tin bảo trì')
                    ->schema([
                        // Thêm trường tiêu đề
                        Forms\Components\TextInput::make('title')
                            ->label('Tiêu đề')
                            ->placeholder('Nhập tiêu đề thông báo bảo trì')
                            ->required()
                            ->maxLength(255), // Giới hạn độ dài tối đa của tiêu đề
    
                        // Thêm trường nội dung
                        Forms\Components\RichEditor::make('content')
                            ->label('Nội dung')
                            ->placeholder('Nhập nội dung thông báo bảo trì')
                            ->required(),
    
                        // Thêm trường thời gian bảo trì
                        Forms\Components\DateTimePicker::make('maintenance_time')
                            ->label('Thời gian bảo trì')
                            ->required(),
                    ]),
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
