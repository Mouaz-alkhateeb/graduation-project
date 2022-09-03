@extends('layouts.masternew')
@section('title')
تعديل الصفحة الشخصية
@stop
@section('content')
<form method="POST" action="{{url('profile/'.Auth::user()->name)}}" enctype="multipart/form-data">
    {{csrf_field()}}
    <div dir="rtl" class=" pt-5 mt-5">
        <div class="row gutters">
            <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="account-settings">
                            <div class="user-profile">
                                <div class="user-avatar pt-3"
                                    style="margin: 0 0 1rem 0; padding-bottom: 1rem;  text-align: center;">
                                    <img src="{{ $user->avatar }}" alt="">
                                    <div class="file btn btn-sm btn-dark">
                                        <span class="btn-text font-weight-bold" style="color: white;">تغيير
                                            الصورة</span>
                                        <input class="@error('avatar') is-invalid @enderror" type="file"
                                            name="avatar" />
                                        @error('avatar')
                                        <small class="form-text text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>
                                <h5 class="user-name text-center">{{$user->name}}</h5>
                                <h6 class="user-email text-center">{{$user->email}}</h6>
                            </div>
                            <!-- end user profile -->
                            <div class="about text-center">
                                <h5>نبذة عني</h5>
                                <p>{{$user->bio}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                <div class="card h-100">
                    <div class="card-body">               
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h5 class="mb-2 text-primary font-weight-bold text-right">تعديل الملف الشخصي</h5>
                            </div>
                            <div class=" col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-right">
                                <div class=" form-group">
                                    <label for="fullName">
                                        <h6>الاسم</h6>
                                    </label>
                                    <input type=" text" class="form-control" id="name" placeholder="اكتب اسمك"
                                        name="name" value="{{$user -> name}}">
                                    @error(' name') <small class="form-text text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-right">
                                <div class="form-group">
                                    <label for="eMail">
                                        <h6>البريدالالكتروني</h6>
                                    </label>
                                    <input type="email" class="form-control" id="eMail" name="email"
                                        placeholder="ادخل البريد الالكتروني الخاص بك" value="{{$user -> email}}">
                                    @error('email')
                                    <small class="form-text text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xl-8 col-lg-6 col-md-6 col-sm-6 col-12 text-right">
                                <div class="form-group">
                                    <label for="phone">
                                        <h6>نبذة عنك</h6>
                                    </label>
                                    <textarea type="text" class="form-control" rows="7" maxlength="72" name="bio"
                                        placeholder="اكتب نبذة عنك">{{$user -> bio}}</textarea>
                                    @error('bio')
                                    <small class="form-text text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                            </div>                          
                            <div class="row gutters pt-4 mr-1">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <div class="text-right">
                                        <input type="submit" class="btn btn-primary btn-sm" value="حفظ التغييرات">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{method_field('PATCH')}}
</form>


@endsection
