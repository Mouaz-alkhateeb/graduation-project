@extends('layouts.master3')
@section('title')
khadamat
@stop
@section('content')


    <!-- ======= hero Section ======= -->
        <div id="hero">
            <div class="hero-container">
                <div id="heroCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">
                    <ol id="hero-carousel-indicators" class="carousel-indicators"></ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active" style="background-image: url(assets2/img/hero-carousel/1.jpeg">
                            <div class="carousel-container">
                                <div class="container">
                                    <p class="animate__animated animate__fadeInDown">موقعك<p class="text-primary">الأمثل</p>
                                    
                                    <p >لبيع وشراء</p></p>
                                    <p class="text-primary">الخدمات</p>
                                    <p class="animate__animated animate__fadeInUp">نساعدك  للبدء في تقديم خدماتك</p>
                                    <a href="register" class="btn-get-started scrollto animate__animated animate__fadeInUp"> إبدأ الان</a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item" style ="background-image: url(assets2/img/hero-carousel/2.jpeg)">
                            <div class="carousel-container">
                                <div class="container">
                                    <h2 class="animate__animated animate__fadeInDown"><span class="text-primary">لمستقبل أفضل</span></h2>
                                    <p class="animate__animated animate__fadeInUp">عليك البدء الان</p>
                                    <a href="register" class="btn-get-started scrollto animate__animated animate__fadeInUp">إبدأ الان</a>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item" style="background-image: url(assets2/img/hero-carousel/3.jpeg)">
                            <div class="carousel-container">
                            <div class="container">
                                <p class="animate__animated animate__fadeInDown"><h1 class="text-primary"><dt></dt></h1></p>
                                <p class="animate__animated animate__fadeInUp">يمكنك الحصول على الخدمة التي تريدها بسهولة </p>
                                <a href="register" class="btn-get-started scrollto animate__animated animate__fadeInUp">إبدأ الان</a>
                            </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span></a>
                    <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span></a>
                </div>
            </div>
        </div>     
        <div id="about" class="about-area area-padding " dir="ltr">
                    <div class="container" >
                        <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline text-center">
                            <h2><span class="text-primary"> من نحن؟</span></h2>
                            </div>
                        </div>
                        </div>
                        <div class="row">
                        <!-- single-well start-->
                        <div class="col-md-6 col-sm-6 col-xs-12" >
                                <div class="well-left">
                                    <div class="single-well">
                                        <a href="#">
                                        <img src="assets2/img/about/our_services.jpeg" alt="">
                                        </a>
                                    </div>
                                </div>
                        </div>
                        <!-- single-well end-->
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="well-middle" dir="rtl" align="right">
                                <div class="single-well" >
                                    <a href="#">
                                    <h2 class="sec-head" >ماذا تعرف عن منصة خدمات؟</h2>
                                    </a>
                                    <ul>
                                        <li>
                                            <i class="bi bi-check"></i>منصة سورية تسويقية للخدمات الإلكترونية المبوبة
                                        
                                        </li>
                                        <li>
                                            <i class="bi bi-check"></i> 
                                            تشبيك مقدمي الخدمات مع طالبي الخدمة بسهولة
                                        </li>
                                        <li>
                                            <i class="bi bi-check"> </i>
                                            شريحة مميزة من العملاء ومقدمي الخدمات المحترفين
                                        </li>
                                        <li>
                                            <i class="bi bi-check"></i>
                                            إمكانية إجراء محادثة وتواصل مباشر مع مقدم الخدمة
                                        </li>
                                        <li>
                                            <i class="bi bi-check"></i>نظام شكاوي  سهل التعامل
                                        </li>
                                        <li>
                                            <i class="bi bi-check"></i>مجتمع عمل مميز واّمن للطرفين    
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End col-->
                        </div>
                    </div>
        </div>
        <div id="portfolio" class="portfolio-area area-padding fix"dir="ltr">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                        <h2> الخدمات المميزة   </h2>
                        </div>
                    </div>
                    </div>
                    <div class="row wesome-project-1 fix">
                    <!-- Start Portfolio -page -->
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <ul id="portfolio-flters">
                        <li data-filter="*" class="filter-active">الكل</li>
                        <li data-filter=".filter-app">الكتابة</li>
                        <li data-filter=".filter-card">التصميم الإعلاني</li>
                        <li data-filter=".filter-web">البرمجة والتطوير</li>
                        <li data-filter=".filter-trans">الترجمة  </li>
                        <li data-filter=".filter-job">أعمال</li>
                        <li data-filter=".filter-elc">التسويق الإلكتروني</li>
                        <li data-filter=".filter-support">الدعم التقني</li>
                        </ul>
                    </div>
                    </div>
                    <div class="row awesome-project-content portfolio-container">
                    <!-- portfolio-item start -->
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-app portfolio-item">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/1.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/makal.jpg">
                                <h4>الكتابة </h4>
                                <span>اكتب مقالة </span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-web">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img  height="640px" src="assets2/img/portfolio/python.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/python.jpg">
                                <h4>البرمجة </h4>
                                <span> python البرمجة بلغة</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-elc">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/8.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/8.jpg">
                                <h4>التسويق الإلكتروني</h4>
                                <span>إدارة صفحات التواصل الإجتماعي</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <!-- portfolio-item end -->

                    <!-- portfolio-item start -->
                    
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-app">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/tanded.jpg" alt="" /></a>
                            <div class="add-actions text-center text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/tanded.jpg">
                                <h4>الكتابة  </h4>
                                <span>خدمة التنضيد المميزة وبسرعة قياسية</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <!-- portfolio-item end -->
                    <!-- portfolio-item start -->
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-card">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/photoshop.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/photoshop.jpg">
                                <h4>التصميم</h4>
                                <span>تصميم صور Photoshop</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-app">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/toWord.jpg" alt="" /></a>
                            <div class="add-actions text-center text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/toWord.jpg">
                                <h4>الكتابة  </h4>
                                <span> word حول نصوصك الورقية الى </span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-card">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/indesign.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/indesign.jpg">
                                <h4>التصميم</h4>
                                <span>خدمات Indesign مميزة</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
        
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-web">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/php.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/php.jpg">
                                <h4>البرمجة</h4>
                                <span>البرمجة بلغة php </span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-web">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/c.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/c.jpg">
                                <h4>البرمجة</h4>
                                <span>البرمجة بلغة C#  </span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-card">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/card.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/card.jpg">
                                <h4>التصميم</h4>
                                <span>تصميم كروت وبادجات</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-trans">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/1.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/1.jpg">
                                <h4>الترجمة</h4>
                                <span>ترجمة نصوص من الفرنسية</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-trans">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/2.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/2.jpg">
                                <h4>الترجمة</h4>
                                <span>ترجمة وتنضيد نصوص من اللغة الإنكليزية للعربية والعكس</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-trans">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/33.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/33.jpg">
                                <h4>الترجمة</h4>
                                <span>خدمة التصحيح اللفظي والكتابي من وإلى اللغة الإسبانية</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <!-- portfolio-item end -->
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-job">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/4.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/4.jpg">
                                <h4>أعمال</h4>
                                <span>استشارات عقارية وعقود</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-job">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/5.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/5.jpg">
                                <h4>أعمال</h4>
                                <span>إدارة الأنظمة المحاسبية</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-job">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/6.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/6.jpg">
                                <h4>أعمال</h4>
                                <span>التحليل المالي وإدارة الجدوى </span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>

                    
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-elc">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/7.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/7.jpg">
                                <h4>التسويق الإلكتروني</h4>
                                <span>خدمات social media</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-elc">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/9.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/9.jpg">
                                <h4>التسويق الإلكتروني</h4>
                                <span>تحليل وإدخال البيانات</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-support">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/11.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/11.jpg">
                                <h4>الدعم التقني</h4>
                                <span>  mac ,windows,linux تنصيب أنظمة </span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-support">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/10.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/10.jpg">
                                <h4>الدعم التقني</h4>
                                <span>إدارة الشبكات عن بعد</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-support">
                        <div class="single-awesome-project">
                        <div class="awesome-img">
                            <a href="#"><img src="assets2/img/portfolio/12.jpg" alt="" /></a>
                            <div class="add-actions text-center">
                            <div class="project-dec">
                                <a class="portfolio-lightbox" data-gallery="myGallery" href="assets2/img/portfolio/12.jpg">
                                <h4>الدعم التقني</h4>
                                <span>صيانة الشبكات وأنظمة التشغيل</span>
                                </a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                

                </div>
            </div>
        </div>
    <!-- ======= Testimonials Section ======= -->
        <div id="testimonials" class="testimonials" dir="ltr">
            <div class="container">

                <div class="testimonials-slider swiper">
                    <div class="swiper-wrapper">

                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                <h3> هدفنا</h3>
                                <p>    
                                    <span>
                                        تسهيل عملية الإتصال بين البائع والمشتري في سوريا ومساعدتك في الحصول على
                                        بائعين/مشتريين محتملين , بالإضافة إلى ضمان عملية تجارية سلسة وعادلة لكلا الطرفين
                                    </span>    
                                </p>
                            </div>
                        </div><!-- End testimonial item -->
                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                <h3> رؤيتنا</h3>
                                <p>
                                    من خلال الخبرة والدعم والمشورة , نهدف إلى تسهيل جميع الصفقات والعمليات الحسابية في سوريا من خلال اتخاذ جميع الإجراءات اللازمة لتقديم الأفضل ونسعى جاهدين لنكون رائدين في هذا المجال
                                </p>
                            </div>
                        </div><!-- End testimonial item -->
                        <div class="swiper-slide">
                            <div class="testimonial-item">
                                <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                                <h3> نسعى جاهدين لنكون</h3>
                                <p>
                                    منصة سورية تسويقية للغير في الجمهورية العربية السورية       
                                </p>
                            </div>
                        </div><!-- End testimonial item -->


                    </div>
                    <div class="swiper-pagination"></div>
                </div>

            </div>
        </div>
    <!-- End Testimonials Section -->
        <br>
        <br>
        <div class="suscribe-area" >
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs=10 ">
                        <div class="suscribe-text text-center">          
                            <a class="sus-btn" href="#">    إبدأ الأن </a>
                            &nbsp;
                            <h3>   مرحبا بكم في خدمات</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- End Suscribe Section -->
    <!-- ======= Contact Section ======= -->
        <div id="contact" class="contact-area" dir="ltr">
            <div class="contact-inner area-padding">
                <div class="contact-overly"></div>
                <div class="container ">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline text-center">
                                <h2> تواصل معنا</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-left: 4px -80px 15px!important">
                        <!-- Start contact icon column -->
                        <div class="col-md-4 text-center" >
                            <div class="contact-icon ">
                                <div class="single-icon" >
                                    <i class="bi bi-phone"></i>
                                    <p >+963969040382</p>
                                </div>
                            </div>
                        </div>
                        <!-- Start contact icon column -->
                        <div class="col-md-4 text-center">
                            <div class="contact-icon ">
                                <div class="single-icon">
                                    <i class="bi bi-envelope"></i>
                                    <p> mouaz@gmail.com </p>
                                </div>
                            </div>
                        </div>
                        <!-- Start contact icon column -->
                        <div class="col-md-4 text-center">
                            <div class="contact-icon">
                                <div class="single-icon">
                                    <i class="bi bi-geo-alt"></i>
                                    <p> سوريا,دمشق</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <!-- Start Google Map -->
                        <div class="col-md-6">
                            <!-- Start Map -->
                            <img src="assets2\img\map.jpeg">
                            <!-- End Map -->
                        </div>
                        <!-- End Google Map -->

                        <!-- Start  contact -->
                        <div class="col-md-6">
                            <div class="form contact-form" dir="rtl">
                                <form action="/contacts_form" method="post" enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    <div class="form-group">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="ادخل اسمك" required>
                                    </div>
                                    <div class="form-group mt-3">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="ادخل الإيميل" required>
                                    </div>
                                    <div class="form-group mt-3">
                                        <input type="text" class="form-control" name="title" id="title" placeholder="عنوان الرسالة" required>
                                    </div>
                                    <div class="form-group mt-3">
                                        <textarea class="form-control" name="content" rows="5" placeholder="الرسالة" required></textarea>
                                    </div>
                                    <br>
                                    <div class="d-flex justify-content-center">
                                        <button type="submit" class="btn-rounded btn-outline-primary ">إرسال </button>
                                    </div>

                                </form>
                            </div>
                        </div>
                        <!-- End Left contact -->
                    </div>
                </div>
            </div>
        </div>
    <!-- End Contact Section -->

@endsection