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
                    <h5 class="account-title">My Order</h5>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Date</th>
                                    <th>Amount</th>
                                    <th>Discount</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($orders as $key=>$value)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>{{$value->created_at->format('d-m-y')}}</td>
                                    <td>৳{{$value->amount}}</td>
                                    <td>৳{{$value->discount}}</td>
                                    <td>{{$value->status?$value->status->name:''}}</td>
                                    <td><a href="{{route('customer.invoice',['id'=>$value->id])}}" class="invoice_btn"><i class="fa-solid fa-eye"></i></a>
                                    @if($value->admin_note)
                                    <a href="{{route('customer.order_note',['id'=>$value->id])}}" class="invoice_btn bg-primary"><i class="fa-solid fa-pencil"></i></a>
                                    </td>
                                    @endif
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection