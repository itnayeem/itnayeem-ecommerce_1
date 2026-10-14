<?php

namespace App\Http\Controllers\Frontend;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Log;
use shurjopayv2\ShurjopayLaravelPackage8\Http\Controllers\ShurjopayController;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Order;
use App\Models\Payment;
use Session;
use Toastr;
use Cart;
class ShurjopayControllers extends Controller
{
   public function payment_success(Request $request){
            $order_id = $request->order_id;
            $shurjopay_service = new ShurjopayController();
            $json = $shurjopay_service->verify($order_id);
            $data = json_decode($json);
            if($data[0]->sp_code != 1000){
                Toastr::error('Failed', 'Your order place failed');
                 return "failed";
                return redirect()->route('customer.checkout');
            }
            $order = Order::where('id',$data[0]->id)->first();
            $order->order_status = 2;
            $order->save();
            
            $payment = Payment::where(['order_id'=>$order->id])->first();
            $payment->payment_method = $data[0]->method;
            $payment->trx_id         = $data[0]->bank_trx_id;
            $payment->sender_number  = $data[0]->phone_no;
            $payment->payment_status = $data[0]->bank_status;
            $payment->save();
            
            $customer_id = $data[0]->value1;
           Cart::instance('shopping')->destroy(); 
           Toastr::success('Thanks, Your order place successfully', 'Success!');
           return redirect('customer/order-success/'.$order->id);
        
       
    }
     public function payment_cancel(Request $request){
        Toastr::error('Your payment cancelled', 'Cancelled!');
        return redirect()->route('home');
     }
}