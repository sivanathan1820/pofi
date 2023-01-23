<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Product</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <style type="text/css">
         @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap');html, body{height: 100%}body{display: grid;background: #fff;font-family: 'Manrope', sans-serif}.mydiv{margin-top: 50px;margin-bottom: 50px}.cross{font-size:10px}.padding-0{padding-right: 5px;padding-left: 5px}.img-style{margin-left: -11px;box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.1);border-radius: 5px;max-width: 104% !important}.m-t-20{margin-top: 20px}.bbb_background{background-color: #E0E0E0 !important}.ribbon{width: 150px;height: 150px;overflow: hidden;position: absolute}.ribbon span{position: absolute;display: block;width: 34px;border-radius: 50%;padding: 8px 0;background-color: #3498db;box-shadow: 0 5px 10px rgba(0, 0, 0, .1);color: #fff;font: 100 18px/1 'Lato', sans-serif;text-shadow: 0 1px 1px rgba(0, 0, 0, .2);text-transform: uppercase;text-align: center}.ribbon-top-right{top: -10px;right: -10px}.ribbon-top-right::before, .ribbon-top-right::after{border-top-color: transparent;border-right-color: transparent}.ribbon-top-right::before{top: 0;left: 17px}.ribbon-top-right::after{bottom: 17px;right: 0}.sold_stars i{color: orange}.ribbon-top-right span{right: 17px;top: 17px}div{display: block;position: relative;-webkit-box-sizing: border-box;-moz-box-sizing: border-box;box-sizing: border-box}.bbb_deals_featured{width: 100%}.bbb_deals{width: 100%;margin-right: 7%;padding-top: 80px;padding-left: 25px;padding-right: 25px;padding-bottom: 34px;box-shadow: 1px 1px 5px 1px rgba(0, 0, 0, 0.1);border-radius: 5px;margin-top: 0px}.bbb_deals_title{position: absolute;top: 10px;left: 22px;font-size: 18px;font-weight: 500;color: #000000}.bbb_deals_slider_container{width: 100%}.bbb_deals_item{width: 100% !important}.bbb_deals_image{width: 100%}.bbb_deals_image img{width: 100%}.bbb_deals_content{margin-top: 33px}.bbb_deals_item_category a{font-size: 14px;font-weight: 400;color: rgba(0, 0, 0, 0.5)}.bbb_deals_item_price_a{font-size: 14px;font-weight: 400;color: rgba(0, 0, 0, 0.6)}.bbb_deals_item_price_a strike{color: red}.bbb_deals_item_name{font-size: 24px;font-weight: 400;color: #000000}.bbb_deals_item_price{font-size: 24px;font-weight: 500;color: #6d6e73}.available{margin-top: 19px}.available_title{font-size: 16px;color: rgba(0, 0, 0, 0.5);font-weight: 400}.available_title span{font-weight: 700}@media only screen and (max-width: 991px){.bbb_deals{width: 100%;margin-right: 0px}}@media only screen and (max-width: 575px){.bbb_deals{padding-left: 15px;padding-right: 15px}.bbb_deals_title{left: 15px;font-size: 16px}.bbb_deals_slider_nav_container{right: 5px}.bbb_deals_item_name, .bbb_deals_item_price{font-size: 20px}}
      </style>
   </head>
   <body>
      <div class="container">
         <div class="row">
            <div class="col-12 col-md-3">
               <div class="row">
                  <div class="col-12 col-md-12">
                     <div class="form-group">
                        <label>Category</label>
                        <select class="form-control" name="category" id="category" onchange="subcategory()">
                           <option value="">All</option>
                        </select>
                     </div>
                  </div>
                  <div class="col-12 col-md-12">
                     <div class="form-group">
                        <label>Sub Category</label>
                        <select class="form-control" name="subcategory" id="subcategory">
                           <option value="">All</option>
                        </select>
                     </div>
                  </div>
                  <div class="col-12 col-md-12" style="display: none;">
                     <div class="form-group">
                        <label>Brand</label>
                        <select class="form-control" name="brand" id="brand">
                           <option value="">All</option>
                        </select>
                     </div>
                  </div>
                  <div class="col-12 col-md-12">
                     <a href="javascript:void(0)" class="btn btn-info" onclick="getproductslist();">Filter</a>
                  </div>
               </div>
            </div>
            <div class="col-12 col-md-9">
               <br>
               <h3 align="center">Products List</h3>
               <br> 
               <div class="row" id="productslist">
                  
               </div>
            </div>
         </div>
      </div>
   </body>
</html>
<script type="text/javascript">
$(document).ready(function(){
    category();
    brand();
    subcategory();
    getproductslist();
});
function brand()
{
  $.ajax({
     type: "POST",
     url: "{{route('getbrands')}}",
     data: {'_token' : '{{csrf_token()}}'},
     dataType: 'json',
     success: function (msg) 
     {
        if(msg.code==200)
        {
            var opt = '<option value="">All</option>';
            for (var i = 0; i < msg.data.length; i++) {
                var arr = msg.data[i];
                opt += '<option value="'+arr["brand_id"]+'">'+arr["brand_name"]+'</option>';
            }
           $("#brand").html(opt);
        }
     }
  });
}
function category()
{
  $.ajax({
     type: "POST",
     url: "{{route('getcategory')}}",
     data: {'_token' : '{{csrf_token()}}'},
     dataType: 'json',
     success: function (msg) 
     {
        if(msg.code==200)
        {
           var opt = '<option value="">All</option>';
            for (var i = 0; i < msg.data.length; i++) {
                var arr = msg.data[i];
                opt += '<option value="'+arr["category_id"]+'">'+arr["category_name"]+'</option>';
            }
           $("#category").html(opt);
        }
     }
  });
}
function subcategory()
{
  var category = $("#category").val();
  $.ajax({
     type: "POST",
     url: "{{route('getsubcategory')}}",
     data: {'_token' : '{{csrf_token()}}','category':category},
     dataType: 'json',
     success: function (msg) 
     {
        if(msg.code==200)
        {
           var opt = '<option value="">All</option>';
            for (var i = 0; i < msg.data.length; i++) {
                var arr = msg.data[i];
                opt += '<option value="'+arr["category_id"]+'">'+arr["category_name"]+'</option>';
            }
           $("#subcategory").html(opt);
        }
     }
  });
}

function getproductslist()
{
  var brand         = $("#brand").val();
  var category      = $("#category").val();
  var subcategory   = $("#subcategory").val();

  $.ajax({
     type: "POST",
     url: "{{route('getproductslist')}}",
     data: {'_token' : '{{csrf_token()}}','brand':brand,'category':category,'subcategory':subcategory},
     dataType: 'json',
     success: function (msg) 
     {
        if(msg.code==200)
        {
           var html = '';
            for (var i = 0; i < msg.data.length; i++) {
                var arr = msg.data[i];
                html += '<div class="col-md-4"><div class="bbb_deals"><div class="bbb_deals_slider_container"><div class=" bbb_deals_item"><div class="bbb_deals_image"><img src="'+arr["product_image"]+'" alt=""></div><div class="bbb_deals_content"><div class="row" align="center"><div class="col-12 col-md-12"><label><b>'+arr["product_name"]+'</b></label></div><div class="col-12 col-md-12"><p><b>₹'+arr["product_discount_price"]+'</b></p><p>Dis.'+arr["product_has_discount"]+' &emsp;<strike>₹'+arr["product_original_price"]+'</strike></p></div><div class="col-12 col-md-12"><a href="javascript:void(0)" class="btn btn-success" onclick="addtocart('+arr['product_id']+')">Add to cart</a></div><div class="col-12 col-md-12"><br><div class="input-group" style="width: 60%;" id="ms_'+arr['product_id']+'"><span class="input-group-prepend"><button type="button" class="btn btn-outline-secondary btn-number" onclick="calculation('+arr['product_id']+',\'-\')"><span class="fa fa-minus"></span></button></span><input type="text" id="quant_'+arr['product_id']+'" class="form-control input-number" value="1"><span class="input-group-append"><button type="button" class="btn btn-outline-secondary btn-number" onclick="calculation('+arr['product_id']+',\'+\')"><span class="fa fa-plus"></span></button></span></div></div></div></div></div></div></div></div>';
            }
           $("#productslist").html(html);
        }
     }
  });
}

function addtocart(id)
{
    var quantity = $("#quant_"+id).val();
    $.ajax({
     type: "POST",
     url: "{{route('addproducts')}}",
     data: {'_token' : '{{csrf_token()}}','id' : id,'quantity' : quantity},
     dataType: 'json',
     success: function (msg) 
     {
        alert(msg.data+". Please see console");
        console.log(msg.cart);
     }
  });
}

function calculation(id,type)
{
    var value = $("#quant_"+id).val();
    if(type=="-")
    {
        var newvalue = parseInt(value)-1;
        if(newvalue<=0)
        {
            newvalue = 1;
        }
    }
    else
    {
        var newvalue = parseInt(value)+1;
    }
    $("#quant_"+id).val(newvalue);
}
    
    
</script>