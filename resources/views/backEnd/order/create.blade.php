@extends('backEnd.layouts.master') @section('title','Order Create') @section('css')
<style>
 .increment_btn,
 .remove_btn {
  margin-top: -17px;
  margin-bottom: 10px;
 }
</style>
<link href="{{asset('public/backEnd')}}/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('public/backEnd')}}/assets/libs/summernote/summernote-lite.min.css" rel="stylesheet" type="text/css" />
@endsection @section('content')

<div class="container-fluid">
 <!-- start page title -->
 <div class="row">
  <div class="col-12">
   <div class="page-title-box">
    <div class="page-title-right">
     <form method="get" action="{{route('admin.order.cart_clear')}}" class="d-inline">
      @csrf
      <button type="submit" class="btn btn-danger rounded-pill delete-confirm" title="Delete"><i class="fas fa-trash-alt"></i> Cart Clear</button>
     </form>
    </div>
    <h4 class="page-title">Order Create</h4>
   </div>
  </div>
 </div>
 <!-- end page title -->
 <div class="row justify-content-center">
  <div class="col-lg-12">
   <div class="card">
    <div class="card-body">
     <form action="{{route('admin.order.store')}}" method="POST" class="row pos_form" data-parsley-validate="" enctype="multipart/form-data">
      @csrf
      <div class="col-sm-12">
       <div class="form-group mb-3">
        <label for="product_id" class="form-label">Products *</label>
        <select id="cart_add" class="form-control select2 @error('product_id') is-invalid @enderror" value="{{ old('product_id') }}">
         <option value="">Select..</option>
         @foreach($products as $value)
         <option value="{{$value->id}}">{{$value->name}}</option>
         @endforeach
        </select>
        @error('product_id')
        <span class="invalid-feedback" role="alert">
         <strong>{{ $message }}</strong>
        </span>
        @enderror
       </div>
      </div>
      <!-- col end -->
      <div class="col-sm-12">
       <table class="table table-bordered table-responsive-sm">
        <thead>
         <tr></tr>
         <tr>
          <th style="width: 10%;">Image</th>
          <th style="width: 25%;">Name</th>
          <th style="width: 15%;">Quantity</th>
          <th style="width: 15%;">Sell Price</th>
          <th style="width: 15%;">Discount</th>
          <th style="width: 15%;">Sub Total</th>
          <th style="width: 15%;">Action</th>
         </tr>
        </thead>
        <tbody id="cartTable">
         @php $product_discount = 0; @endphp @foreach($cartinfo as $key=>$value)
         <tr>
          <td><img height="30" src="{{asset($value->options->image)}}" /></td>
          <td>{{$value->name}}</td>
          <td>
           <div class="qty-cart vcart-qty">
            <div class="quantity">
             <button class="minus cart_decrement" value="{{$value->qty}}" data-id="{{$value->rowId}}">-</button>
             <input type="text" value="{{$value->qty}}" readonly />
             <button class="plus cart_increment" value="{{$value->qty}}" data-id="{{$value->rowId}}">+</button>
            </div>
           </div>
          </td>
          <td>{{$value->price}}</td>
          <td class="discount"><input type="number" class="product_discount" value="{{$value->options->product_discount}}" placeholder="0.00" data-id="{{$value->rowId}}" /></td>
          <td>{{($value->price - $value->options->product_discount)*$value->qty}}</td>
          <td>
           <button type="button" class="btn btn-danger btn-xs cart_remove" data-id="{{$value->rowId}}"><i class="fa fa-times"></i></button>
          </td>
         </tr>
         @php $product_discount += $value->options->product_discount*$value->qty; Session::put('product_discount',$product_discount); @endphp @endforeach
        </tbody>
       </table>
      </div>
      <!-- custome address -->
      <div class="col-sm-6">
       <div class="row">
        <div class="col-sm-12">
         <div class="form-group mb-2">
          <input type="text" id="name" class="form-control @error('name') is-invalid @enderror" placeholder="Customer Name" name="name" value="" required />
          @error('name')
          <span class="invalid-feedback" role="alert">
           <strong>{{ $message }}</strong>
          </span>
          @enderror
         </div>
        </div>
        <!-- col-end -->
        <div class="col-sm-12">
         <div class="form-group mb-2">
          <input type="number" id="phone" class="form-control @error('phone') is-invalid @enderror" placeholder="Customer Number" name="phone" value="" required />
          @error('phone')
          <span class="invalid-feedback" role="alert">
           <strong>{{ $message }}</strong>
          </span>
          @enderror
         </div>
        </div>
        <!-- col-end -->
        <div class="col-sm-12">
         <div class="form-group mb-3">
          <input type="address" placeholder="Address" id="address" class="form-control @error('address') is-invalid @enderror" name="address" value="" required />
          @error('email')
          <span class="invalid-feedback" role="alert">
           <strong>{{ $message }}</strong>
          </span>
          @enderror
         </div>
        </div>
        <div class="col-sm-12">
         <div class="form-group mb-3">
          <select type="area" id="area" class="form-control @error('area') is-invalid @enderror" name="area" required>
           <option value="">Select....</option>
            <option value="1">ঢাকা সিটির ভিতরে হোম ডেলিভারি</option>

            <option value="2">ঢাকা সিটির বাহিরে হোম ডেলিভারি</option>

            <option value="3">কুরিয়ার অফিস থেকে ডেলিভারি</option>

          </select>
          @error('email')
          <span class="invalid-feedback" role="alert">
           <strong>{{ $message }}</strong>
          </span>
          @enderror
         </div>
        </div>
        <!-- col-end -->
       </div>
      </div>
      <!-- cart total -->
      <div class="col-sm-6">
       <table class="table table-bordered">
        <tbody id="cart_details">
         @php $subtotal = Cart::instance('pos_shopping')->subtotal(); $subtotal = str_replace(',','',$subtotal); $subtotal = str_replace('.00', '',$subtotal); $shipping = Session::get('pos_shipping'); $total_discount =
         Session::get('pos_discount')+Session::get('product_discount'); @endphp
         <tr>
          <td>Sub Total</td>
          <td>{{$subtotal}}</td>
         </tr>
         <tr>
          <td>Shipping Fee</td>
          <td>{{$shipping}}</td>
         </tr>
         <tr>
          <td>Discount</td>
          <td>{{$total_discount}}</td>
         </tr>
         <tr>
          <td>Total</td>
          <td>{{($subtotal + $shipping)- $total_discount}}</td>
         </tr>
        </tbody>
       </table>
      </div>
      <div>
       <input type="submit" class="btn btn-success" value="Order Submit" />
      </div>
     </form>
    </div>
    <!-- end card-body-->
   </div>
   <!-- end card-->
  </div>
  <!-- end col-->
 </div>
</div>
@endsection @section('script')
<script src="{{asset('public/backEnd/')}}/assets/libs/parsleyjs/parsley.min.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/js/pages/form-validation.init.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/libs/select2/js/select2.min.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/js/pages/form-advanced.init.js"></script>
<!-- Plugins js -->
<script src="{{asset('public/backEnd/')}}/assets/libs//summernote/summernote-lite.min.js"></script>
<script>
 $(".summernote").summernote({
  placeholder: "Enter Your Text Here",
 });
</script>

<script type="text/javascript">
 $(document).ready(function () {
  $(".select2").select2();
 });
</script>
<script>
 function cart_content() {
  $.ajax({
   type: "GET",
   url: "{{route('admin.order.cart_content')}}",
   dataType: "html",
   success: function (cartinfo) {
    $("#cartTable").html(cartinfo);
   },
  });
 }
 function cart_details() {
  $.ajax({
   type: "GET",
   url: "{{route('admin.order.cart_details')}}",
   dataType: "html",
   success: function (cartinfo) {
    $("#cart_details").html(cartinfo);
   },
  });
 }

 $("#cart_add").on("change", function (e) {
  var id = $(this).val();
  if (id) {
   $.ajax({
    cache: "false",
    type: "GET",
    data: { id: id },
    url: "{{route('admin.order.cart_add')}}",
    dataType: "json",
    success: function (cartinfo) {
     return cart_content() + cart_details();
    },
   });
  }
 });
 $(".cart_increment").click(function (e) {
  e.preventDefault();
  var id = $(this).data("id");
  var qty = $(this).val();
  if (id) {
   $.ajax({
    cache: false,
    data: { id: id, qty: qty },
    type: "GET",
    url: "{{route('admin.order.cart_increment')}}",
    dataType: "json",
    success: function (cartinfo) {
     return cart_content() + cart_details();
    },
   });
  }
 });
 $(".cart_decrement").click(function (e) {
  e.preventDefault();
  var id = $(this).data("id");
  var qty = $(this).val();
  if (id) {
   $.ajax({
    cache: false,
    type: "GET",
    data: { id: id, qty: qty },
    url: "{{route('admin.order.cart_decrement')}}",
    dataType: "json",
    success: function (cartinfo) {
     return cart_content() + cart_details();
    },
   });
  }
 });
 $(".cart_remove").click(function (e) {
  e.preventDefault();
  var id = $(this).data("id");
  if (id) {
   $.ajax({
    cache: false,
    type: "GET",
    data: { id: id },
    url: "{{route('admin.order.cart_remove')}}",
    dataType: "json",
    success: function (cartinfo) {
     return cart_content() + cart_details();
    },
   });
  }
 });
 $(".product_discount").change(function () {
  var id = $(this).data("id");
  var discount = $(this).val();
  $.ajax({
   cache: false,
   type: "GET",
   data: { id: id, discount: discount },
   url: "{{route('admin.order.product_discount')}}",
   dataType: "json",
   success: function (cartinfo) {
    return cart_content() + cart_details();
   },
  });
 });
 $(".cartclear").click(function (e) {
  $.ajax({
   cache: false,
   type: "GET",
   url: "{{route('admin.order.cart_clear')}}",
   dataType: "json",
   success: function (cartinfo) {
    return cart_content() + cart_details();
   },
  });
 }); // pshippingfee from total
 $("#area").on("change", function () {
  var id = $(this).val();
  $.ajax({
   type: "GET",
   data: { id: id },
   url: "{{route('admin.order.cart_shipping')}}",
   dataType: "html",
   success: function (cartinfo) {
    return cart_content() + cart_details();
   },
  });
 });
</script>
@endsection
