<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('members', function (Blueprint $table) {
            $table->increments('id');
            $table->string('first_name')->default(0);
            $table->string('last_name')->default(0);
            $table->date('birth_date')->default('2000-11-11');
            $table->string('report_subject')->default(0);
            $table->string('country')->default(0);
            $table->string('phone_country')->default(0);
            $table->string('email')->default(0);
            $table->string('company')->nullable();
            $table->string('position')->nullable();
            $table->text('about_me')->nullable();
            $table->string('photo')->default(0);
            $table->string('hide')->default('false');
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
        Schema::dropIfExists('users');
    }
}
