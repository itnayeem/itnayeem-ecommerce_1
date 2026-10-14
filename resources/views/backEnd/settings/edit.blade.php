@extends('backEnd.layouts.master')
@section('title','General Setting Update')
@section('css')
<link href="{{asset('public/backEnd')}}/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('public/backEnd')}}/assets/libs/summernote/summernote-lite.min.css" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="container-fluid">
    
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <a href="{{route('settings.index')}}" class="btn btn-primary rounded-pill">Manage</a>
                </div>
                <h4 class="page-title">General Setting Update</h4>
            </div>
        </div>
    </div>       
    <!-- end page title --> 
   <div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <form action="{{route('settings.update')}}" method="POST" class=row data-parsley-validate=""  enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="id" value="{{$edit_data->id}}">
                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="name" class="form-label">Name *</label>
                            <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ $edit_data->name}}" id="name" required="">
                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
					
					
					
					
					
					
					
					
					
					
					
					                    <div class="col-sm-6">
                        <div class="form-group mb-3">
                            <label for="facebook_verification" class="form-label">Fecbook Verficiation Code *</label>
                            <input type="text" class="form-control @error('facebook_verification') is-invalid @enderror" name="facebook_verification" value="{{ $edit_data->facebook_verification}}" id="facebook_verification" required="">
                            @error('facebook_verification')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
					
										                    <div class="col-sm-6">
                        <div class="form-group mb-3">
                            <label for="google_verification" class="form-label">Google Verficiation Code *</label>
                            <input type="text" class="form-control @error('google_verification') is-invalid @enderror" name="google_verification" value="{{ $edit_data->google_verification}}" id="google_verification" required="">
                            @error('google_verification')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
					
					
					
					
					
                    <!-- col-end -->
                    <div class="col-sm-6 mb-3">
                        <div class="form-group">
                            <label for="white_logo" class="form-label">White Logo *</label>
                            <input type="file" class="form-control @error('white_logo') is-invalid @enderror" name="white_logo" value="{{ old('white_logo') }}"  id="white_logo" >
                            <img src="{{asset($edit_data->white_logo)}}" class="edit-image" alt="">
                            @error('white_logo')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <!-- col end -->
                    <div class="col-sm-6 mb-3">
                        <div class="form-group">
                            <label for="dark_logo" class="form-label">Dark Logo *</label>
                            <input type="file" class="form-control @error('dark_logo') is-invalid @enderror" name="dark_logo" value="{{ old('dark_logo') }}"  id="dark_logo" >
                            <img src="{{asset($edit_data->dark_logo)}}" class="edit-image" alt="">
                            @error('dark_logo')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <!-- col end -->
                    
                    <div class="col-sm-6 mb-3">
                        <div class="form-group">
                            <label for="favicon" class="form-label">Favicon Logo *</label>
                            <input type="file" class="form-control @error('favicon') is-invalid @enderror" name="favicon" value="{{ old('favicon') }}"  id="favicon" >
                            <img src="{{asset($edit_data->favicon)}}" class="edit-image" alt="">
                            @error('favicon')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <!-- col end -->
					
					                    <div class="col-sm-6 mb-3">
                        <div class="form-group">
                            <label for="og_baner" class="form-label">OG Baner Images *</label>
                            <input type="file" class="form-control @error('og_baner') is-invalid @enderror" name="og_baner" value="{{ old('og_baner') }}"  id="og_baner" >
                            <img src="{{asset($edit_data->og_baner)}}" class="edit-image" alt="">
                            @error('og_baner')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <!-- col end -->
					
					
					
					
                    <div class="col-sm-6">
                        <div class="form-group mb-3">
                            <label for="hot_deal_end_date" class="form-label">Hot Deal End Date *</label>
                            <input type="date" class="form-control @error('hot_deal_end_date') is-invalid @enderror" name="hot_deal_end_date" value="{{ $edit_data->hot_deal_end_date}}" id="hot_deal_end_date" required="">
                            @error('hot_deal_end_date')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group mb-3">
                            <label for="flash_sale_end_date" class="form-label">Flash Sale End Date *</label>
                            <input type="date" class="form-control @error('flash_sale_end_date') is-invalid @enderror" name="flash_sale_end_date" value="{{ $edit_data->flash_sale_end_date}}" id="flash_sale_end_date" required="">
                            @error('flash_sale_end_date')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="header_code" class="form-label">Header Code</label>
                            <textarea class="form-control @error('header_code') is-invalid @enderror" name="header_code"  id="header_code">
                                {{ $edit_data->header_code}}
                            </textarea>
                            @error('header_code')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
					
					                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="meta_description" class="form-label">Meta Description</label>
                            <textarea class="form-control @error('meta_description') is-invalid @enderror" name="meta_description"  id="meta_description">
                                {{ $edit_data->meta_description}}
                            </textarea>
                            @error('meta_description')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
					
					
					
										                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="meta_keyword" class="form-label">Meta Keyword</label>
                            <textarea class="form-control @error('meta_keyword') is-invalid @enderror" name="meta_keyword"  id="meta_keyword">
                                {{ $edit_data->meta_keyword}}
                            </textarea>
                            @error('meta_keyword')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
					
					
					
					
					
					
					
					
                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="top_headline" class="form-label">Top Headline</label>
                            <textarea class="form-control @error('top_headline') is-invalid @enderror" name="top_headline"  id="top_headline">
                                {{ $edit_data->top_headline}}
                            </textarea>
                            @error('top_headline')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="checkout_note" class="form-label">Checkout Note</label>
                            <textarea class="summernote form-control @error('checkout_note') is-invalid @enderror" name="checkout_note"  id="checkout_note">
                                {{ $edit_data->checkout_note}}
                            </textarea>
                            @error('checkout_note')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group mb-3">
                            <label for="order_policy" class="form-label">Order Policy</label>
                            <textarea class="summernote form-control @error('order_policy') is-invalid @enderror" name="order_policy"  id="order_policy">
                                {{ $edit_data->order_policy}}
                            </textarea>
                            @error('order_policy')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 mb-3">
                        <div class="form-group">
                            <label for="show_all_products" class="d-block">All Products at Home</label>
                            <select class="form-control" name="show_all_products" id="show_all_products">
                                <option value="1" @if($edit_data->show_all_products==1)selected @endif >Show</option>
                                <option value="0" @if($edit_data->show_all_products==0)selected @endif >Hide</option>
                            </select>
                           
                            @error('show_all_products')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 mb-3">
                        <div class="form-group">
                            <label for="show_category_wise_products" class="d-block">Categories Wise Products at Home</label>
                            <select class="form-control" name="show_category_wise_products" id="show_category_wise_products">
                                <option value="1" @if($edit_data->show_category_wise_products==1)selected @endif >Show</option>
                                <option value="0" @if($edit_data->show_category_wise_products==0)selected @endif >Hide</option>
                            </select>
                          
                            @error('show_category_wise_products')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 mb-3">
                        <div class="form-group">
                            <label for="status" class="d-block">Status</label>
                            <label class="switch">
                              <input type="checkbox" disabled value="1" name="status" @if($edit_data->status==1)checked @endif>
                              <span class="slider round"></span>
                            </label>
                            @error('status')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
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