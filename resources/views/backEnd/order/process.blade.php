@extends('backEnd.layouts.master')
@section('title','Order Process')
@section('css')
<style>
    .increment_btn,.remove_btn {
    margin-top: -17px;
    margin-bottom: 10px;
}
</style>
<link href="{{asset('public/backEnd')}}/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('public/backEnd')}}/assets/libs/summernote/summernote-lite.min.css" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="container-fluid">
    
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Order Process [Invoice : #{{$data->invoice_id}}]</h4>
            </div>
        </div>
    </div>       
    <!-- end page title --> 
   <div class="row justify-content-center">
    <div class="col-lg-10">
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>SL</th>
                            <th>Image</th>
                            <th>Product</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($data->orderdetails as $key=>$product)
                        <tr>
                            <td>{{$key+1}}</td>
                            <td><img src="{{asset($product->image?$product->image->image:'')}}" height="50" width="50" alt=""></td>
                            <td>{{$product->product_name}}</td>
                        </tr>
                        @endforeach
                        
                    </tbody>
                </table>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
               <form action="{{route('admin.order_change')}}" method="POST" class=row data-parsley-validate="" name="editForm" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="id" value="{{$data->id}}">
                    
                            <div class="col-sm-6">
                              <div class="form-group mb-3">
                                   <label for="name" class="form-label">Customer name </label>
                                   <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" id="name" value="{{$data->shipping?$data->shipping->name:''}}" placeholder="Name">
                                     @error('name')
                                      <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                      </span>
                                     @enderror
                              </div>
                            </div>
                            
                             <div class="col-sm-6">
                              <div class="form-group mb-3">
                                   <label for="phone" class="form-label">Customer Phone </label>
                                   <input type="text" class="form-control @error('phone') is-invalid @enderror" name="phone" id="phone" value="{{$data->shipping?$data->shipping->phone:''}}" placeholder="Phone Number">
                                     @error('phone')
                                      <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                      </span>
                                     @enderror
                              </div>
                            </div>
                             <div class="col-sm-12">
                              <div class="form-group mb-3">
                                   <label for="address" class="form-label">Customer Address </label>
                                   <textarea name="address" class="form-control @error('address') is-invalid @enderror">{{$data->shipping?$data->shipping->address:''}}</textarea>
                                    @error('address')
                                      <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                      </span>
                                     @enderror
                              </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group mb-3">
                                    <label for="area">Delivery Area *</label>
                                    <select type="area" id="area" class="form-control @error('area') is-invalid @enderror" name="area"   required>
                                        @foreach($shippingcharge as $key=>$value)
                                        <option @if($data->shipping?$data->shipping->area:'' == $value->name) selected @endif value="{{$value->id}}">{{$value->name}}</option>
                                        @endforeach
                                    </select>
                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group mb-3">
                                <label for="category_id" class="form-label">Order Status</label>
                                 <select class="form-control select2-multiple @error('status') is-invalid @enderror" value="{{ old('status') }}" name="status" data-toggle="select2"  data-placeholder="Choose ..." required>
                                    <optgroup >
                                        <option value="">Select..</option>
                                        @foreach($orderstatus as $value)
                                        <option value="{{$value->id}}"  @if($data->order_status==$value->id) selected @endif>{{$value->name}}</option>
                                        @endforeach
                                    </optgroup>
                                </select>
                                @error('status')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <!-- col end -->
                  
                    <!-- col end -->
                    <div>
                        <input type="submit" class="btn btn-success" value="Submit">
                    </div>

                </form>

            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col-->
   </div>
</div>
@endsection


@section('script')
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
@endsection