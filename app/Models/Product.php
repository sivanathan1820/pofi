<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_name',
        'product_code',
        'product_slug',
        'product_category',
        'product_subcategory',
        'product_original_price',
        'product_original_price',
        'product_discount_price',
        'product_quantity',
        'product_image',
        'product_status',
    ];
}
