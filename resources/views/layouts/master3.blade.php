<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="Description" content="Bootstrap Responsive Admin Web Dashboard HTML5 Template">
    <meta name="Author" content="Spruko Technologies Private Limited">
    <meta name="Keywords" content="admin,admin dashboard,admin dashboard template,admin panel template,admin template,admin theme,bootstrap 4 admin template,bootstrap 4 dashboard,bootstrap admin,bootstrap admin dashboard,bootstrap admin panel,bootstrap admin template,bootstrap admin theme,bootstrap dashboard,bootstrap form template,bootstrap panel,bootstrap ui kit,dashboard bootstrap 4,dashboard design,dashboard html,dashboard template,dashboard ui kit,envato templates,flat ui,html,html and css templates,html dashboard template,html5,jquery html,premium,premium quality,sidebar bootstrap 4,template admin bootstrap 4" />
    <!-- {{-- <link href="assets2/img/favicon.png" rel="icon"> --}}
    <link href="assets2/img/logo.png" rel="icon"> -->
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Amiri:wght@700&family=Work+Sans:ital,wght@0,600;0,800;1,200;1,500&display=swap" rel="stylesheet">
    <!-- Vendor CSS Files -->
    <link href="{{URL::asset('assets2/vendor/animate.css/animate.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('assets2/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('assets2/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
    <link href="{{URL::asset('assets2/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('assets2/vendor/glightbox/css/glightbox.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('assets2/vendor/swiper/swiper-bundle.min.css')}}" rel="stylesheet">
    <!-- Template Main CSS File -->
    <link href="{{URL::asset('assets2/css/style.css" rel="stylesheet')}}"> 
    @include('layouts.head')
</head>
<body>
<div dir="ltr">@include('include.header')</div>
@yield('content')
@include('include.footer')

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="{{ URL::asset('assets2/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{ URL::asset('assets2/vendor/glightbox/js/glightbox.min.js')}}"></script>
<script src="{{ URL::asset('assets2/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
<script src="{{ URL::asset('assets2/vendor/swiper/swiper-bundle.min.js')}}"></script>
<script src="{{ URL::asset('assets2/vendor/php-email-form/validate.js')}}"></script>

<!-- Template Main JS File -->
<script src="assets2/js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script>
config={
    allowInput: true,
    minDate: "today",
    maxDate: "yyyy-mm-dd",
}

    flatpickr("input[type=datatime_local]",config);
</script>

<script>
function show(nr) {
    document.getElementById("table1").style.display="none";
    document.getElementById("table2").style.display="none";
    document.getElementById("table3").style.display="none";
    document.getElementById("table"+nr).style.display="block";
}
</script>

{{-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
</script> --}}

</body>

</html>
