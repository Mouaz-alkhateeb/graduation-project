<!-- ======= Header ======= -->

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
<link href="{{URL::asset('assets2/css/style.css')}}" rel="stylesheet">

<header id="header" class="fixed-top d-flex align-items-center" style="margin-bottom:25px;">
    <div class="container d-flex justify-content-between">
@unlessrole('owner|customer|provider')
    <div class="logo">
        <h1><a href="{{ route('home') }}"><img src="{{URL::asset('assets2/img/logo.png')}}" rel="logo"/><span>  k</span>hadamat</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        {{-- <a href=""><img src="assets2/img/logo.png" alt="" class="img-fluid"></a> --}}
    </div>
    <nav id="navbar" class="navbar">
            <ul>
            <li class="dropdown"><a href="#">أبدأ الآن<i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a  href="{{ route('login') }}">تسجيل الدخول</a></li>
                        <li><a  href="{{ route('register') }}">انشاء حساب</a></li>
                    </ul>
                </li>
                <li><a class="nav-link scrollto" href="#contact"> تواصل معنا </a></li>
                <li><a class="nav-link scrollto " href="#about"> حول خدمات </a></li>
                <li class="dropdown"><a href="#portfolio">الخدمات<i class="bi bi-chevron-down"></i></a>
                    <ul>   
                            @foreach(\App\sections::where('parent_id',null)->get() as $section)
                                <li ><a class="text-right">{{$section->name}}</a></li>
                            @endforeach
                                </li>
                    </ul>
                </li>
                <li><a class="nav-link scrollto active" href="#hero"> الصفحة الرئيسية </a></li>
            </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
    </nav>
@endunlessrole
@hasanyrole('customer|provider|owner')
<div class="logo">
        <h1><a href="{{ route('home') }}"><img src="{{URL::asset('assets2/img/logo.png')}}" rel="logo"/><span>  k</span>hadamat</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        {{-- <a href=""><img src="assets2/img/logo.png" alt="" class="img-fluid"></a> --}}
    </div>
    <nav id="navbar" class="navbar" >
        <ul>
                    
               








                @role('provider')
                <a  class="nav-link scrollto" href="{{ url('/chat') }}">محادثاتي<i class="fab fa-facebook-messenger" ></i></a>
                <li><a class="nav-link scrollto"  href="{{url('providerOrders')}}">طلباتي</a></li>            
                @endrole   




                @hasanyrole('customer|provider')
                <li><a class="nav-link scrollto" href="{{ url('/userservices') }}">  أضف خدمة </a></li>  
                <li><a class="nav-link scrollto" href="{{url('/costomer_order')}}">مشترياتي</a></li>                                                                  
                @endhasanyrole
                <li class="dropdown"><a href="{{url('/all_services')}}">الخدمات<i class="bi bi-chevron-down"></i></a>
                            <ul>
                                @foreach(\App\sections::where('parent_id',null)->get() as $section)
                                <li class="dropdown ">
                                    <a href="">{{$section->name}}</a>
                                @endforeach
                                </li>
                            </ul>
                        </li>
                <li class="dropdown"><a href="#portfolio">{{Auth::user()->name}}<i class="bi bi-chevron-down"></i></a> 
                    <ul dir="rtl" align="right">   
                        <li><a href="{{url('profile')}}">عرض الملف الشخصي</a></li>
                        <li><a href="{{url('profile/'.Auth::user()->name.'/edit')}}">تعديل الملف الشخصي</a></li>          
                        <li><a class="nav-link scrollto"  href="{{ route('logout') }}"
                            onclick="event.preventDefault();document.getElementById('logout-form').submit();">
                        تسجيل خروج </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                        </li>
                    </ul>
                </li>
                @can('لوحة التحكم')
                <li><a class="nav-link scrollto" href="{{ url('/' . $page='dashboard') }}">لوحة التحكم </a></li>
                @endcan
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
    </nav>
@endhasanyrole
    <!-- .navbar -->

    </div>
</header>
<!-- End Header -->

