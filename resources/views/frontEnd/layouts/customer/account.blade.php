@extends('frontEnd.layouts.master')
@section('title','Customer Account')
@section('content')
<section class="customer-section">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="customer-sidebar">
                    @include('frontEnd.layouts.customer.sidebar')
                </div>
            </div>
            <div class="col-sm-9">
                <div class="customer-content">
                    <h5 class="account-title">My Account</h5>
                    <table class="table">
                        @php
                            $customer = \App\Models\Customer::with('cust_area')->find(Auth::guard('customer')->user()->id);
                        @endphp
                        <tbody>
                            <tr>
                                <td>Name</td>
                                <td>{{$customer->name}}</td>
                            </tr>
                            <tr>
                                <td>Phone</td>
                                <td>{{$customer->phone}}</td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>{{$customer->email}}</td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>{{$customer->address}}</td>
                            </tr>
                            <tr>
                                <td>Disctrict</td>
                                <td>{{$customer->district}}</td>
                            </tr>
                            <tr>
                                <td>Area</td>
                                <td>{{$customer->cust_area?$customer->cust_area->area_name:''}}</td>
                            </tr>
                            <tr>
                                <td>Image</td>
                                <td><img src="{{asset($customer->image)}}" alt="" class="backend_img"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
@push('script')
<script src="{{asset('public/frontEnd/')}}/js/parsley.min.js"></script>
<script src="{{asset('public/frontEnd/')}}/js/form-validation.init.js"></script>
@endpush