<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id('product_id');
            $table->string('product_name')->nullable();
            $table->string('product_code')->nullable();
            $table->string('product_slug')->nullable();
            $table->integer('product_category');
            $table->integer('product_subcategory');
            $table->string('product_original_price')->nullable();
            $table->string('product_has_discount')->nullable();
            $table->string('product_discount_price')->nullable();
            $table->string('product_quantity')->nullable();
            $table->string('product_image')->nullable();
            $table->string('product_status')->nullable();
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
        Schema::dropIfExists('products');
    }
}
