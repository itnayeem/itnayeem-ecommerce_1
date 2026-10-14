<?php

namespace App\Http\Controllers\Frontend;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Productprice;
use App\Models\Product;
use Toastr;
use Cart;
use DB;
class ShoppingController extends Controller
{

    public function addTocartGet($id,Request $request){
        $qty=1;
        $productInfo = DB::table('products')->where('id',$id)->first();
        $productImage = DB::table('productimages')->where('product_id',$id)->first();
        $cartinfo=Cart::instance('shopping')->add(['id'=>$productInfo->id,'name'=>$productInfo->name,'qty'=>$qty,'price'=>$productInfo->new_price,
            'options' => [
                'image'=>$productImage->image,
                'old_price'=>$productInfo->old_price,
                'slug' => $productInfo->slug,
                'purchase_price' => $productInfo->purchase_price,
            ]]);

        // return redirect()->back();
        return response()->json($cartinfo);
    } 

    public function cart_store(Request $request)
    {
        $product = Product::where(['id' => $request->id])->first();
        Cart::instance('shopping')->add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => $request->qty,
            'price' => $product->new_price,
            'options' => [
                'slug' => $product->slug,
                'image' => $product->image->image,
                'old_price' => $product->new_price,
                'purchase_price' => $product->purchase_price,
                'product_size'=>$request->product_size,
                'product_color'=>$request->product_color,
                'pro_unit'=>$request->pro_unit,
            ],
        ]);

        Toastr::success('Product successfully add to cart', 'Success!');
        return redirect()->route('customer.checkout');
        
    }
    public function cart_update(Request $request)
    {
        // Get the row ID of the cart item
        $rowId = $request->id;
        // Fetch the current cart item using the row ID
        $cartItem = Cart::instance('shopping')->get($rowId);
        if ($cartItem) {
            // Update the options for the cart item
            Cart::instance('shopping')->update($rowId, [
                'options' => [
                    'product_size' => $request->product_size ?: $cartItem->options->product_size, // Use new size or keep existing
                    'product_color' => $request->product_color ?: $cartItem->options->product_color, // Use new color or keep existing
                    'slug' => $cartItem->options->slug, // Keep existing slug
                    'image' => $cartItem->options->image, // Keep existing image
                    'old_price' => $cartItem->options->old_price, // Keep existing old price
                    'purchase_price' => $cartItem->options->purchase_price, // Keep existing purchase price
                    'pro_unit' => $cartItem->options->pro_unit, // Keep existing pro unit
                ],
            ]);
        }
    
        $data = Cart::instance('shopping')->content();
        return view('frontEnd.layouts.ajax.cart', compact('data'));
    }
    public function cart_remove(Request $request)
    {
        $remove = Cart::instance('shopping')->update($request->id, 0);
        $data = Cart::instance('shopping')->content();
        return view('frontEnd.layouts.ajax.cart', compact('data'));
    }
    public function cart_increment(Request $request)
    {
        $item = Cart::instance('shopping')->get($request->id);
        $qty = $item->qty + 1;
        $increment = Cart::instance('shopping')->update($request->id, $qty);
        $data = Cart::instance('shopping')->content();
        return view('frontEnd.layouts.ajax.cart', compact('data'));
    }
    public function cart_decrement(Request $request)
    {
        $item = Cart::instance('shopping')->get($request->id);
        $qty = $item->qty - 1;
        $decrement = Cart::instance('shopping')->update($request->id, $qty);
        $data = Cart::instance('shopping')->content();
        return view('frontEnd.layouts.ajax.cart', compact('data'));
    }
    public function cart_count(Request $request)
    {
        $data = Cart::instance('shopping')->count();
        return view('frontEnd.layouts.ajax.cart_count', compact('data'));
    }
    public function mobilecart_qty(Request $request)
    {
        $data = Cart::instance('shopping')->count();
        return view('frontEnd.layouts.ajax.mobilecart_qty', compact('data'));
    }
    public function changeProduct(Request $request)
    {
         
        
        // Get the selected product
        $productId = $request->input('id');
        $product = Product::find($productId); // Fetch the product by ID
        
       

        if ($product) {
            // Clear existing items in the cart if necessary
            Cart::instance('shopping')->destroy(); // Or adjust this logic as needed
            
            // Add the selected product to the cart
            Cart::instance('shopping')->add([
                'id' => $product->id,
                'name' => $product->name,
                'qty' => 1, // Adjust quantity as needed
                'price' => $product->new_price,
                'options' => [
                    'slug' => $product->slug,
                    'image' => $product->image->image,
                    'old_price' => $product->old_price,
                    'purchase_price' => $product->purchase_price,
                ],
            ]);
            $data = Cart::instance('shopping')->content();
            return view('frontEnd.layouts.ajax.cart', compact('data'));
           
        }

        return response()->json(['success' => false, 'message' => 'Product not found.']);
    }

}
