@extends('layouts.masterProfile')
@section('css')
@endsection
@section('title')
الصفحة الشخصية
@stop
@section('content')
<!-- row -->
<div class="row row-sm d-flex justify-content-center pt-5 mt-5">
    <div class="col-lg-4">
        <div class="card-body d-flex justify-content-center">
            <div class="pl-0 ">
                <div class="main-profile-overview">
                    <div class="main-img-user profile-user">
                        <img alt="{{$user -> name}}" src="{{ $user -> avatar }}" width="132" height="132">
                    </div>
                    <div class="mg-b-20">
                        <div>
                            <h5 class="main-profile-name text-center">{{$user -> name}}</h5>
                        </div>
                    </div>
                </div><!-- main-profile-overview -->
            </div>
        </div>
    </div>
    <!-- </div> -->
    <div class="card">
        <div class=" card-body">
            <div class="tabs-menu ">
                <!-- Tabs -->
                <ul class="nav nav-tabs profile navtab-custom panel-tabs">
                    <li class="active">
                        <a href="#home" data-toggle="tab" aria-expanded="true"> <span class="visible-xs"><i
                                    class="las la-user-circle tx-16 mr-1"></i></span> <span class="hidden-xs">نبذة
                                عني</span>
                        </a>
                    </li>
                    @role('provider')
                    <li class="">
                        <a href="#profile" data-toggle="tab" aria-expanded="false"> <span class="visible-xs"><i
                                    class="las la-images tx-15 mr-1"></i></span> <span class="hidden-xs">خدماتي</span>
                        </a>
                    </li>
                    @if(Auth::user()->id == $user->id)
                    <li class="">
                        <a href="#settings" data-toggle="tab" aria-expanded="false">
                            <span class="visible-xs"><i class="las la-address-card tx-15 mr-1"></i>
                            </span> <span class="hidden-xs">إحصائيات</span>
                        </a>
                    </li>
                    @endif
                    @endrole
                </ul>
            </div>
            <div class="tab-content border-left border-bottom border-right border-top-0 p-4">
                <div class="tab-pane active" id="home">

                   
                    <p class=" m-b-5 text-right">{{$user -> bio}}</p>
                </div>
                <div class="tab-pane" id="profile">
                    <div class="row">
                        @if(isset($services) && $services_count >0)
                        @foreach($services as $service)
                        <div class="col-sm-2">
                            <div class="border p-1 card thumb">
                                <a href="{{url('profile/'.$service->id.'/'.$service -> provider -> id)}}"
                                    class="image-popup" title="Screenshot-2">
                                    <img src=" /{{$service -> image}}" class="thumb-img" alt="work-thumbnail"
                                        width="136" height="94">
                                </a>
                                <a href="{{url('profile/'.$service->id.'/'.$service -> provider -> id)}}">
                                    <h4 class="text-center tx-14 mt-3 mb-0">{{$service -> name}}</h4>
                                </a>
                                <div class="ga-border"></div>
                                @if($service->ratings->count() > 0)
                                    <p class="text-center">
                                        <?php $ratenum=number_format($service->ratings->avg('stars_rated')) ?>
                                        <span class="rating" dir="ltr">
                                            @for($i=1; $i<=$ratenum; $i++)
                                                <i class="fa fa-star checked"></i>
                                            @endfor
                                            @for($j=$ratenum+1; $j<=5; $j++)
                                                <i class="fa fa-star"></i>
                                            @endfor
                                        </span>
                                        <span class="text-muted">({{$service->ratings->count()}})</span>
                                    </p>
                                @endif
                            </div>
                        </div>
                        @endforeach
                        @endif
                    </div>
                </div>
                <div class="tab-pane text-right" id="settings">
                    <div class="row">
                        <div class="col-sm-3">
                            <h6 class="mb-0">التقييمات</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                            @if($provider_rat_avg > 0)
                                <?php $ratenum=number_format($provider_rat_avg)?>
                                <span class="rating" dir="ltr">
                                    @for($i=1; $i<=$ratenum; $i++)
                                        <i class="fa fa-star checked"></i>
                                    @endfor
                                    @for($j=$ratenum+1; $j<=5; $j++)
                                        <i class="fa fa-star"></i>
                                    @endfor
                                </span>
                            @else
                                @for($k=1; $k<=5; $k++)
                                    <i class="fa fa-star"></i>
                                @endfor
                            @endif
                        </div>
                        {{-- @endforeach --}}
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <h6 class="mb-0">عدد الخدمات</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">{{$services_count}}</div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <h6 class="mb-0">عدد الطلبات</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                            {{$orders}}
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <h6 class="mb-0">أرباحي</h6>
                        </div>
                        <div class="col-sm-9 text-secondary">
                            {{$total}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- row closed -->
</div>
<!-- Container closed -->
</div>
<!-- main-content closed -->
@endsection
@section('js')
@endsection
