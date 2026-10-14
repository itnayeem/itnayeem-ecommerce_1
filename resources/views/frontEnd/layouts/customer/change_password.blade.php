@extends('frontEnd.layouts.master')
@section('title')
<title>Change Password</title>
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
                <div class="customer-content checkout-shipping">
                    <h5 class="account-title">Change Password</h5>
                    <form action="{{route('customer.password_update')}}" method="POST" class="row justify-content-center" data-parsley-validate="">
                        @csrf
                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <label for="old_password">Old Password *</label>
                                <span data-feather="folder"></span>
                                <input type="password" id="old_password" class="form-control @error('old_password') is-invalid @enderror" name="old_password" value="{{old('old_password')}}"  required>
                                @error('old_password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <!-- col-end -->
                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <label for="new_password">New Password *</label>
                                <span data-feather="lock"></span>
                                <input type="password" id="new_password" class="form-control @error('new_password') is-invalid @enderror" name="new_password" value="{{old('new_password')}}"  required>
                                @error('new_password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <!-- col-end -->
                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <label for="confirm_password">Confirmed Password *</label>
                                <span data-feather="key"></span>
                                <input type="password" id="confirm_password" class="form-control @error('confirm_password') is-invalid @enderror" name="confirm_password" value="{{old('confirm_password')}}"  required>
                                @error('confirm_password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <!-- col-end -->
                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <button type="submit" class="submit-btn">Update</button>
                            </div>
                        </div>
                        <!-- col-end -->
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
@push('script')
<script src="{{asset('public/frontEnd/')}}/js/parsley.min.js"></script>
<script src="{{asset('public/frontEnd/')}}/js/form-validation.init.js"></script>
<script src="{{asset('public/frontEnd/')}}/js/select2.min.js"></script>
<script>
    $(document).ready(function() {
        $('.select2').select2();
    });
</script>

@endpush