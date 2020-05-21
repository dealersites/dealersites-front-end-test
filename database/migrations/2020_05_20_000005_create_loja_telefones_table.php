<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLojaTelefonesTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'loja_telefones';

    /**
     * Run the migrations.
     * @table loja_telefones
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->bigIncrements('id');
            $table->unsignedBigInteger('loja_id')->nullable()->default(null);
            $table->string('phone');
            $table->string('label')->nullable()->default(null);
            $table->string('icon')->nullable()->default(null);
            $table->tinyInteger('is_whatsapp')->default('0');
            $table->tinyInteger('is_telegram')->default('0');
            $table->tinyInteger('is_skype')->default('0');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
     public function down()
     {
       Schema::dropIfExists($this->tableName);
     }
}
