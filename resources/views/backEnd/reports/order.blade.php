@extends('backEnd.layouts.master')
@section('title','Order Report')
@section('content')
@section('css')
<link href="{{asset('public/backEnd')}}/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('public/backEnd/')}}/assets/libs/flatpickr/flatpickr.min.css" rel="stylesheet" type="text/css" />
<style>
    p{
        margin:0;
    }
   @page { 
        margin: 50px 0px 0px 0px;
    }
   @media print {
    td{
        font-size: 18px;
    }
    p{
        margin:0;
    }
    title {
        font-size: 25px;
    }
    header,footer,.no-print,.left-side-menu,.navbar-custom {
      display: none !important;
    }
  }
</style>
@endsection 
<div class="container-fluid">
    
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Order Report</h4>
            </div>
        </div>
    </div>       
    <!-- end page title --> 
   <div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <form class="no-print">
                    <div class="row">   
                        <div class="col-sm-3">
                            <div class="form-group">
                               <label for="keyword" class="form-label">Keyword</label>
                                <input type="text" value="{{request()->get('keyword')}}" class="form-control" name="keyword">
                            </div>
                        </div>
                        <!--col-sm-3-->
                        <div class="col-sm-3">
                            <div class="form-group mb-3">
                                <label for="user_id" class="form-label">Assign User </label>
                                <select class="form-control select2 @error('user_id') is-invalid @enderror" name="user_id" value="{{ old('user_id') }}" >
                                    <option value="">Select..</option>
                                    @foreach($users as $key=>$value)
                                        <option value="{{$value->id}}" @if(request()->get('user_id') == $value->id) selected @endif>{{$value->name}}</option>
                                    @endforeach
                                </select>
                                @error('user_id')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <!-- col end -->
                        <div class="col-sm-3">
                            <div class="form-group">
                               <label for="start_date" class="form-label">Start Date</label>
                                <input type="date" value="{{request()->get('start_date')}}"  class="form-control flatdate" name="start_date">
                            </div>
                        </div>
                        <!--col-sm-3--> 
                        <div class="col-sm-3">
                            <div class="form-group">
                               <label for="end_date" class="form-label">End Date</label>
                                <input type="date" value="{{request()->get('end_date')}}" class="form-control flatdate" name="end_date">
                            </div>
                        </div>
                        <!--col-sm-3-->
                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <button class="btn btn-primary">Submit</button>
                                <a href="{{route('admin.order_report')}}" class="btn btn-danger">Reset</a>
                            </div>
                        </div>
                        <!-- col end -->
                    </div>  
                </form>
                <div class="row mb-3">
                    <div class="col-sm-6 no-print">
                         {{$orders->links('pagination::bootstrap-4')}}
                    </div>
                    <div class="col-sm-6">
                        <div class="export-print text-end">
                            <button onclick="printFunction()"class="no-print btn btn-success"><i class="fa fa-print"></i> Print</button>
                            <button id="export-excel-button" class="no-print btn btn-info"><i class="fas fa-file-export"></i> Export</button>
                        </div>
                    </div>
                </div>
                <div id="content-to-export">
                    <div class="table-responsive">
                        <table class="table nowrap w-100">
                        <thead>
                            <tr>
                                <th style="width:5%">Invoice</th>
                                <th style="width:20%">Customer</th>
                                <th style="width:20%">Phone</th>
                                <th style="width:30%">Product</th>
                                <th style="width:10%">Purchase</th>
                                <th style="width:10%">Sale</th>
                                <th style="width:10%">Qty</th>
                                <th style="width:10%">Total</th>
                            </tr>
                        </thead>               
                    
                        <tbody>
                            @php
                                $total_purchase = 0;
                                $total_qty = 0;
                                $total_sale = 0;
                            @endphp
                            @foreach($orders as $key=>$value)
                            
                            <tr>
                                <td>{{$value->order?$value->order->invoice_id:''}}</td>
                                <td>{{$value->shipping?$value->shipping->name:''}}</td>
                                <td>{{$value->shipping?$value->shipping->phone:''}}</td>
                                <td>{{$value->product_name}}</td>
                                <td>{{$value->purchase_price}}</td>
                                <td>{{$value->sale_price}}</td>
                                <td>{{$value->qty}}</td>
                                <td>{{$value->qty*$value->sale_price}}</td>
                            </tr>
                            @php
                                $total_purchase += $value->qty*$value->purchase_price;
                                $total_qty += $value->qty;
                                $total_sale += $value->qty * $value->sale_price;
                            @endphp
                            @endforeach
                         </tbody>
                         <tfoot>
                             <tr>
                                 <td colspan="5" class="text-end"><strong>Total</strong></td>
                                 <td><strong>{{$total_purchase}}</strong></td>
                                 <td><strong>{{$total_qty}}</strong></td>
                                 <td><strong>{{$total_sale}}</strong></td>
                             </tr>
                             <tr>
                                 <td colspan="8" class="text-center">
                                     <h5><strong>Total Purchase = {{$total_purchase}}</strong></h5>
                                     <h5><strong>Total Sales = {{$total_sales}}</strong></h5>
                                     <h5><strong>Total Profit = {{$total_sales-$total_purchase}}</strong></h5>
                                 </td>
                             </tr>
                         </tfoot>
                        </table>
                    </div>

                </div>
            </div> <!-- end card body-->
        </div> <!-- end card -->
    </div><!-- end col-->
   </div>
</div>
@endsection
@section('script')
<script src="{{asset('public/backEnd/')}}/assets/libs/select2/js/select2.min.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/js/pages/form-advanced.init.js"></script>
<script src="{{asset('public/backEnd/')}}/assets/libs/flatpickr/flatpickr.min.js"></script>
<script src="https://cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $('.select2').select2();
        flatpickr(".flatdate", {});
    });
</script>
<script>
    function printFunction() {
        window.print();
    }
</script>
<script>
    $(document).ready(function() {
        $('#export-excel-button').on('click', function() {
            var contentToExport = $('#content-to-export').html();
            var tempElement = $('<div>');
            tempElement.html(contentToExport);
            tempElement.find('.table').table2excel({
                exclude: ".no-export",
                name: "Order Report" 
            });
        });
    });
</script>

@endsection
