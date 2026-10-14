<!DOCTYPE html>
<html>
<head>
    <title>New Order Placed - Admin Notification</title>
</head>
<body>
    <h1>New Order Notification</h1>
    <p>A new order has been placed. Here are the details:</p>

    
    <p><strong>Order Status:</strong> {{ $order->order_status == 1 ? 'Pending' : 'Completed' }}</p>
    <table class="body-wrap" style="background:#fff; width: 100%; margin: 0;;padding:0 30px">
        <tbody>
            <tr style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 25px; margin: 0;border:0">
                <td style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                   <h3 style="color:#4DBC60;padding-bottom:10px">[Order # {{$order->invoice_id}}] ({{$order->created_at->format('d M Y')}})</h3>
                 </td>
            </tr>
        </tbody>
    </table>
    <table style="width:100%;border:0;padding:0 30px">
       <thead>
           <tr>
               <td style="border:1px solid #ddd;padding:10px;font-weight:800">Product</td>
               <td style="border:1px solid #ddd;padding:10px;font-weight:800">Quantity</td>
               <td style="border:1px solid #ddd;padding:10px;font-weight:800">Price</td>
           </tr>
       </thead>
       <tbody>
           @foreach($order->orderdetails as $value)
            <tr>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%">{{$value->product_name}}</td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%">x {{$value->qty}}</td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%">{{$value->qty*$value->sale_price}}</td>
            </tr>
            @endforeach
       </tbody>
    </table>
    
    <table style="width:100%;border: 0px ;padding:0 30px">
       <tbody>
            <tr>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-right: 0px solid #fff;font-weight:800">Subtotal</td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-left: 0px solid #fff;"></td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;">{{$order->amount - ($order->shipping_charge+$order->discount)}}</td>
            </tr>
            <tr>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-right: 0px solid #fff;font-weight:800">Shipping Charge</td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-left: 0px solid #fff;"></td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;">{{$order->shipping_charge}}</td>
            </tr>
            <tr>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-right: 0px solid #fff;font-weight:800">Method</td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-left: 0px solid #fff;"></td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;">{{$order->payment?$order->payment->payment_method:''}}</td>
            </tr>
            
            <tr>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-right: 0px solid #fff;font-weight:800">Total</td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-left: 0px solid #fff;"></td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;">{{$order->amount}}</td>
            </tr>
       </tbody>
    </table>
    <!-- ./ email template -->
    <table style="padding:10px 0px;margin-bottom:25px;text-align:center !important;width:100%">
        <tbody>
            <tr>
                <td style="padding:20px 0;font-weight:800;color:#4DBC60;font-size:22px">Billing Address</td>
            </tr>
            <tr><td>{{$shipping->name??''}}</td></tr>
            <tr><td>{{$shipping->phone??''}}</td></tr>
            <tr><td>{{$shipping->address??''}}</td></tr>
            <tr><td>{{$shipping->area??''}}</td></tr>
            <tr><td>{{$shipping->email??''}}</td></tr>
        </tbody>
    </table>

  

    <p>Thank you for reviewing this order. Please check the admin panel for more details or to update the order status.</p>

    <p>Best regards,</p>
    <p>{{ config('app.name') }} Team</p>
</body>
</html>
