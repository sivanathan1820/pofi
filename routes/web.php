<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Settings;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
}); 

Route::get('/clearcache', function ()
{
    Artisan::call('route:clear');
    Artisan::call('cache:clear'); 
    Artisan::call('config:cache');
    Artisan::call('view:clear');
    Artisan::call('optimize:clear');
    dd("All cache cleared successfully..!");
});

Route::post('/getbrands',[Settings::class,'getbrands'])->name('getbrands');
Route::post('/getcategory',[Settings::class,'getcategory'])->name('getcategory');
Route::post('/getsubcategory',[Settings::class,'getsubcategory'])->name('getsubcategory');
Route::post('/getproductslist',[Settings::class,'getproductslist'])->name('getproductslist');
Route::post('/addproducts',[Settings::class,'addproducts'])->name('addproducts');