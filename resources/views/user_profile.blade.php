@extends('layouts.masterProfile')
@section('css')
@endsection
@section('title')
الصفحة الشخصية
@stop
@section('content')
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
                    <li class="">
                        <a href="#profile" data-toggle="tab" aria-expanded="false"> <span class="visible-xs"><i
                                    class="las la-images tx-15 mr-1"></i></span> <span class="hidden-xs">الخدمات التي أقدمها</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="tab-content border-left border-bottom border-right border-top-0 p-4">
                <div class="tab-pane active" id="home">
                    <p class=" m-b-5 text-right">{{$user -> bio}}</p>
                </div>
                <div class="tab-pane" id="profile">
                    <div class="row">
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
                                <p class="text-muted text-center"><small>التقييم</small>
                                </p>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('js')
@endsection
