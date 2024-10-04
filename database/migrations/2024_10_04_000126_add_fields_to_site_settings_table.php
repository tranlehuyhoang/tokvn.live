<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldsToSiteSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('site_settings', function (Blueprint $table) {
            $table->text('about')->nullable(); // Trường nội dung giới thiệu
            $table->string('privacy_policy_image')->nullable(); // Trường ảnh chính sách bảo mật
            $table->text('privacy_policy_content')->nullable(); // Trường nội dung chính sách bảo mật
            $table->string('terms_image')->nullable(); // Trường ảnh điều khoản
            $table->text('terms_content')->nullable(); // Trường nội dung điều khoản
            $table->boolean('enable_upgrade')->default(false); // Bật/tắt nâng cấp
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('site_settings', function (Blueprint $table) {
            $table->dropColumn('about');
            $table->dropColumn('privacy_policy_image');
            $table->dropColumn('privacy_policy_content');
            $table->dropColumn('terms_image');
            $table->dropColumn('terms_content');
            $table->dropColumn('enable_upgrade');
        });
    }
}
