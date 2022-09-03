@extends('layouts.master_ser')
@section('title')
الدفع عبر فاتورة
@stop
@section('css')
<!--- Internal Select2 css-->
<link href="{{ URL::asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet">
<!---Internal Fileupload css-->
<link href="{{ URL::asset('assets/plugins/fileuploads/css/fileupload.css') }}" rel="stylesheet" type="text/css" />
<!---Internal Fancy uploader css-->
<link href="{{ URL::asset('assets/plugins/fancyuploder/fancy_fileupload.css') }}" rel="stylesheet" />
<!--Internal Sumoselect css-->
<link rel="stylesheet" href="{{ URL::asset('assets/plugins/sumoselect/sumoselect-rtl.css') }}">
<!--Internal  TelephoneInput css-->
<link rel="stylesheet" href="{{ URL::asset('assets/plugins/telephoneinput/telephoneinput-rtl.css') }}">
@endsection
<!-- row -->
<br>
<br>
<br>
<br>
<br>
<br>
<h1 class="text-center">  بوابة <img src="{{URL::asset('assets/img/faces/logo.png')}}" class="logo-icon" alt="logo"> للدفع الإلكتروني </h1>

<div dir="rtl" class="row align-items-center vh-100 ">
<div class="col-lg-10 col-md-10 mx-auto">
    <div class="card mt-5 border-2 border-primary shadow-5 ">
        <div class="card-body">
            <form action="{{route('stripe.post')}}" method="post" enctype="multipart/form-data"  data-stripe-publishable-key="{{ env('STRIPE_KEY') }}" autocomplete="off">
                {{ csrf_field() }}
                {{-- 1 --}}
                <div dir="rtl"  class="row">

                    <div class="col text-right">
                        <label>
                            <h5 class="text-dark" >تاريخ الدفع</h5>
                            </label>
                        <input class="form-control border-dark fc-datepicker" name="order_Date" placeholder="YYYY-MM-DD" type="text" value="{{ date('Y-m-d') }}" required readonly>
                    </div>    
                </div>
                {{-- 2 --}}
                <div class="row mt-3">
                    <div class="col text-right  ml-3">
                        <label for="service_price">
                            <h5 class="text-dark" >المبلغ المراد تحويله</h5>
                        </label>
                        <input type="number" class="form-control border-dark" id="service_price" name="service_price">
                    </div>
                    <div class="col text-right">
                        <label for="provider_name">
                        <h5 class="text-dark" >رقم الحساب البنكي </h5>
                    </label>
                    <input type=" text" class="form-control border-dark" id="name" name="name" >
                    </div>
                </div>
                {{-- 3 --}}
                <br>
                <br>
                <br>
                <div class="d-flex justify-content-center">
                    <button type="submit" class="btn btn-primary">تحويل المبلغ</button>
                </div>
            </form>   
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
</div>


<!-- row closed -->

