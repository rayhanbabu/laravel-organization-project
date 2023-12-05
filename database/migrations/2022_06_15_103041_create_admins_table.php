<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('admins', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('nameen');
            $table->string('address');
            $table->string('email');
            $table->string('email2');
            $table->string('email_verify')->nullable();
            $table->string('mobile');
            $table->string('admin_name');
            $table->string('admin_password');
            $table->string('role');
            $table->string('version_type');
            $table->string('status')->nullable();
            $table->integer('payment')->nullable();
            $table->string('forget_code')->nullable();
            $table->string('forget_time')->nullable();
            $table->date('created_date')->nullable();
            $table->date('expired_date')->nullable();
            $table->integer('subscribe')->nullable();
            $table->integer('payment_duration')->nullable();
            $table->string('image')->nullable();
            $table->integer('magazine_size')->nullable();
            $table->integer('member_size')->nullable();
            $table->integer('executive_size')->nullable();
            $table->integer('senior_size')->nullable();
            $table->integer('general_size')->nullable();
            $table->integer('notice_size')->nullable();
            $table->integer('welcome_size')->nullable();
            $table->integer('testimonial_size')->nullable();
            $table->integer('slide_size')->nullable();
            $table->integer('blood_size')->nullable();
            $table->integer('advisor_size')->nullable();
            $table->integer('sms_access')->nullable();
            $table->integer('header_size')->nullable();
            $table->integer('resheader_size')->nullable();
            $table->string('text1')->nullable();
            $table->string('text2')->nullable();
            $table->string('text3')->nullable();
            $table->string('text4')->nullable();
            $table->string('text5')->nullable();
            $table->string('fb_link')->nullable();
            $table->string('youtube_link')->nullable();
            $table->string('other_link')->nullable();

            $table->string('level_union')->nullable();
            $table->string('level_workplace')->nullable();
            $table->string('level_current_address')->nullable();
            $table->string('level_permanent_address')->nullable();
            $table->string('level_custom1')->nullable();
            $table->string('level_custom2')->nullable();
            $table->string('level_custom3')->nullable();
            $table->string('level_custom4')->nullable();
            $table->string('level_university')->nullable();
            $table->string('level_department')->nullable();
            $table->integer('web_show')->default(0);
            $table->integer('api_show')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('admins');
    }
};
