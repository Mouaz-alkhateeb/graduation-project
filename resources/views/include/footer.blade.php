<!-- ======= Footer ======= -->
<footer dir="rtl" align="center">
    <div class="footer-area">
    <div class="container">
        <div class="row">
        <div class="col-md-4" >
            <div class="footer-content">
                <div class="footer-head" >
                <h2 class="sec-head" style="font-size:2vw">الأقسام</h2>
                    <ul dir="rtl" align="right" style="margin-right: 100px;">
                       @foreach(\App\sections::where('parent_id',null)->get() as $section)
                        <li><i class="bi bi-check"></i>{{$section->name}}</li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
        <!-- end single footer -->
        <div class="col-md-4" >
            <div class="footer-content" >
                <div class="footer-head" style="font-family:Lucida Console">
                    <h2 class="sec-head" style="font-size:2vw">للتواصل معنا</h2>
                    <ul>
                        <i class="bi bi-envelope"></i> mouaz@gmail.com <br>
                    </ul>
                    <ul>
                    <i class="bi bi-geo-alt"></i>  سوريا, دمشق<br>
                    </ul>
                   
                    <br>    
                  <a href="{{ url('stripe') }}">  <img src="{{URL::asset('assets/img/faces/logo.png')}}" class="logo-icon" alt="logo"> &nbsp;&nbsp;</a>              
                    <img src="{{URL::asset('assets/img/faces/12.png')}}" class="logo-icon" alt="logo">             
                </div>
            </div>
        </div>
        <div class="col-md-4" >
            <div class="footer-content">
                <div class="footer-head" >
                <h2 class="sec-head" style="font-size:2vw" >من نحن؟</h2>
                    <ul dir="rtl" align="right" style="margin-right:80px;">
                        <li>
                            <i class="bi bi-check" ></i>منصة سورية تسويقية للخدمات الإلكترونية المبوبة
                        </li>
                        <li>
                            <i class="bi bi-check"></i> تشبيك مقدمي الخدمات مع طالبي الخدمة بسهولة
                        </li>
                        <li>
                            <i class="bi bi-check"></i>شريحة مميزة من العملاء ومقدمي الخدمات المحترفين
                        </li>     
                    </ul>
                </div>
            </div>
        </div>
        <!-- end single footer -->
       
        </div>
    </div>
    </div>
    <div class="footer-area-bottom">
    <div class="container">
        <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
           
            <div class="credits">
            <span>   جميع الحقوق محفوظة © 2022 </span>
            </div>
        </div>
        </div>
    </div>
    </div>
</footer><!-- End  Footer -->