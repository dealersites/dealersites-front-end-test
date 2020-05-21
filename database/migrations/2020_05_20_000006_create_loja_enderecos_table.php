<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLojaEnderecosTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'loja_enderecos';

    /**
     * Run the migrations.
     * @table loja_enderecos
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->bigIncrements('id');
            $table->unsignedBigInteger('loja_id')->nullable()->default(null);
            $table->string('street');
            $table->string('postcode')->nullable()->default(null);
            $table->string('door_number')->nullable()->default(null);
            $table->string('complement')->nullable()->default(null);
            $table->string('neighborhood')->nullable()->default(null);
            $table->string('city')->nullable()->default(null);
            $table->string('state')->nullable()->default(null);
            $table->text('google_map_embed')->nullable()->default(null);
            $table->text('google_link_share')->nullable()->default(null);
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
