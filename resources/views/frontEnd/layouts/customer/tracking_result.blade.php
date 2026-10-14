@extends('frontEnd.layouts.master')
@section('title')
  <title>Track Oder</title>
@section('content')
<section class="auth-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-sm-6">
                @foreach($order as $key=>$value)
                <div class="form-content">
                    <p class="auth-title">Order Track Result</p>
                    <div class="track_info">
                        <ul>
                            <li><span>Invoice ID:</span> {{$value->invoice_id}} </li>
                            <li><span>Date:</span> {{$value->created_at}} </li>
                            <li><span>Status:</span> {{App\Models\Orderstatus::where('id',$value->order_status)->first()->name}} </li>
                        </ul>
                    </div>
                    <table class="table table-bordered tracktable">
                        <thead>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th>Price</th>
                        </thead>
                        <tbody>
                            @php 
                                $orderdetails = App\Models\OrderDetails::where(['order_id'=>$value->id])->get();
                            @endphp
                             @foreach($orderdetails as $key=>$product)
                            <tr>
                                <td>{{$product->product_name}}</td>
                                <td>{{$product->qty}}</td>
                                <td style="text-align:right;">{{$product->sale_price * $product->qty}} TK</td>
                            </tr>
                            @endforeach
                        </tbody>
                        <tfoot>
                            <tr>
                            <td colspan="2"></td>
                            <td class="tfoot_bg"><span>Delivery Charge:</span> {{$value->shipping_charge}} Tk.</td>
                            </tr>
                            <tr>
                            <td colspan="2"></td>
                            <td class="tfoot_bg"><span>Total:</span> {{$value->amount}} Tk.</td>
                            </tr>
                        </tfoot>
                       
                    </table>
                    
                    
                </div>
                @endforeach
                
            </div>
        </div>
    </div>
</section>
@endsection
@push('script')
<script src="{{asset('public/frontEnd/')}}/js/parsley.min.js"></script>
<script src="{{asset('public/frontEnd/')}}/js/form-validation.init.js"></script>
@endpush