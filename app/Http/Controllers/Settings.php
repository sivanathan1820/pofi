<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator; 
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use Session;
class Settings extends Controller
{
    public function getbrands(Request $request)
    {
        $BrandData = Brand::where('status','active')->get();
        return response()->json(['code' => 200,'data' => $BrandData]);
    }

    public function getcategory(Request $request)
    {
        $CategoryData = Category::where('status','active')->where('main_category',0)->get();
        return response()->json(['code' => 200,'data' => $CategoryData]);
    }

    public function getsubcategory(Request $request)
    {
        $category = $request->category;
        if($category !="")
        {
            $SubCategoryData = Category::where('status','active')->where('main_category',$category)->get();
        }
        else
        {
            $SubCategoryData = Category::where('status','active')->where('main_category','!=',0)->get();
        }
        
        return response()->json(['code' => 200,'data' => $SubCategoryData]);
    }

    public function getproductslist(Request $request)
    {
        $category       = $request->category;
        $subcategory    = $request->subcategory;

        if($category=="" && $subcategory=="")
        {
            $ProductsData = Product::where('product_status','active')->get();
        }
        else if($category !="" && $subcategory=="")
        {
            $ProductsData = Product::where('product_status','active')->where('product_category',$category)->get();
        }
        else if($category !="" && $subcategory!="")
        {
            $ProductsData = Product::where('product_status','active')->where('product_category',$category)->where('product_subcategory',$subcategory)->get();
        }
        else if($category =="" && $subcategory !="")
        {
            $ProductsData = Product::where('product_status','active')->where('product_subcategory',$subcategory)->get();
        }

        return response()->json(['code' => 200,'data' => $ProductsData]);
    }
    public function addproducts(Request $request)
    {
        $id            = $request->id;
        $quantity      = $request->quantity;

        Session::put('product_'.$id.'_quantity',$quantity);

        return response()->json(['code' => 200,'data' => "Product Added",'cart' => Session::all()]);
    }

}
