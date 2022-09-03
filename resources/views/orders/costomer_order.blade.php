@extends('layouts.masterProfile')
@section('title')
مشترياتي
@stop
@section('content')
<br>
<br>
    <div dir="rtl" class="row align-items-center text-right vh-100 ">
        <div class="col-xl-11 mx-auto">        
            <div class="card border-2 border-primary shadow">
                <div class="card-header ">
                    <div class="card-body">
                        <div class="container">
                       
                            @if (session()->has('delete'))
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <strong>{{ session()->get('delete') }}</strong>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            @endif

                            @if (session()->has('update'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <strong>{{ session()->get('update') }}</strong>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            @endif
                            <div class="row">
                                <h2>جدول مشترياتك</h2>
                            </div>
                            <div class="row">
                                <div class="col-sm-3 col-md-2 col-xl-2">
                                    <h3><button type="button" class="btn btn-primary active btn-sm "> <a href="#" class="text-light" onclick='show(1);'> <i class="bi bi-cart-check-fill"></i> الطلبات المنفذة </a> </button></h3>
                                </div>
                                <div class="col-sm-3 col-md-2 col-xl-2 mr">
                                    <h3><button type="button" class="btn btn-primary active btn-sm "> <a href="#" class="text-light" onclick='show(2);'> <i class="bi bi-cart-dash-fill"></i> طلبات قيد التنفيذ</a> </button></h3>
                                </div>
                                <div class="col-sm-3 col-md-2 col-xl-2 mr">
                                    <h3><button type="button" class="btn btn-primary active btn-sm "> <a href="#" class="text-light" onclick='show(3);'> <i class="bi bi-cart-x-fill"></i> طلبات غير منفذة</a> </button></h3>
                                </div>
                            </div>
                            <div id="table1" class="mt-3">
                                <table class="table">
                                    <thead class="h6">
                                        <tr>
                                            <th> أسم الخدمة </th>
                                            <th> حالة الطلب </th>
                                            <th> سعر الطلب </th>
                                            <th> حالة الدفع </th>
                                            <th> تاريخ الشراء </th>
                                            <th> تاريخ التسليم </th>
                                            <th> أسم مقدم الخدمة </th>
                                            <th> مرفقاتك </th>
                                            <th> ملاحظاتك لمقدم الخدمة </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($orders1 as $order1)
                                        <tr>
                                            <td>{{$order1->service->name}} </td>
                                            <td>{{$order1->OrderStatus}} </td>
                                            <td>{{$order1->Amount_collection}}</td>
                                            <td>{{$order1->PaymentStatus}}</td>
                                            <td>{{$order1->order_Date}}</td>
                                            <td> تم التسليم بتاريخ {{$order1->Due_Date}}</td>
                                            <td>{{$order1->service->provider->name}} </td>
                                            <td>
                                                <a href=" {{url('view_file')}}/{{$order1->id}} " class="btn btn-outline-info btn-sm">عرض</a>
                                            </td>
                                            @if($order1->note == null)
                                            <td>لم يكن لديك ملاحظات </td>
                                            @else
                                            <td>{{$order1->note}} </td>
                                            @endif
                                            @if(!empty($order1->service->deleted_at))
                                            <td class="t2">
                                                !. لقد قام مقدم الخدمة بحذف هذه الخدمة
                                            </td>
                                            @endif
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class=" ">
                            <div id="table2" style="display: none">
                                <table class="table ">
                                    <thead class="h6">
                                        <tr>
                                            <th> أسم الخدمة </th>
                                            <th> حالة الطلب </th>
                                            <th> سعر الطلب </th>
                                            <th> حالة الدفع </th>
                                            <th> تاريخ الشراء </th>
                                            <th> تاريخ التسليم </th>
                                            <th> أسم مقدم الخدمة </th>
                                            <th> ملاحظاتك لمقدم الخدمة </th>
                                            <th> مرفقاتك </th>
                                            <th> تعديل بعض البيانات </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($orders2 as $order2)
                                        <tr>
                                            <td>{{$order2->service->name}} </td>
                                            <td>{{$order2->OrderStatus}} </td>
                                            <td>{{$order2->Amount_collection}}</td>
                                            <td>{{$order2->PaymentStatus}}</td>
                                            <td>{{$order2->order_Date}}</td>
                                            <td>{{$order2->Due_Date}}</td>
                                            <td>{{$order2->service->provider->name}} </td>
                                            @if($order2->note == null)
                                            <td>لم يكن لديك ملاحظات </td>
                                            @else
                                            <td>{{$order2->note}} </td>
                                            @endif
                                            <td>
                                                <a href=" {{url('view_file')}}/{{$order2->id}} " class="btn btn-outline-info btn-sm">عرض</a>
                                            </td>
                                            <td> 
                                                <button class="btn mr-4 btn-outline-success btn-sm" 
                                                    data-order_id="{{$order2->id }}" 
                                                    data-service_name=" {{$order2->service->name}} " 
                                                    data-toggle="modal" 
                                                    data-target="#edit_order">تعديل 
                                                </button>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div id="table3" style="display: none">
                            <table class="table">
                                <thead class="h6">
                                    <tr>
                                        <th> أسم الطلب </th>
                                        </h5>
                                        <th> حالة الطلب </th>
                                        <th> سعر الطلب </th>
                                        <th> حالة الدفع </th>
                                        <th> تاريخ الشراء </th>
                                        <th> تاريخ التسليم </th>
                                        <th> أسم مقدم الخدمة </th>
                                        <th> ملاحظاتك لمقدم الخدمة </th>
                                        <th> مرفقاتك </th>
                                        <th> تعديل بعض البيانات </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($orders3 as $order3)
                                    <tr>
                                        <td>{{$order3->service->name}} </td>
                                        <td>{{$order3->OrderStatus}} </td>
                                        <td>{{$order3->Amount_collection}}</td>
                                        <td>{{$order3->PaymentStatus}}</td>
                                        <td>{{$order3->order_Date}}</td>
                                        <td>{{$order3->Due_Date}}</td>
                                        <td>{{$order3->service->provider->name}} </td>
                                        @if($order3->note == null)
                                        <td>لم يكن لديك ملاحظات </td>
                                        @else
                                        <td>{{$order3->note}} </td>
                                        @endif
                                        <td>
                                            <a href=" {{url('view_file')}}/{{$order3->id}} " class="btn btn-outline-info btn-sm">عرض</a>
                                        </td>
                                        <td> 
                                            <button class="btn mr-4 btn-outline-success btn-sm" 
                                                data-order_id="{{ $order3->id }} " 
                                                data-service_name="{{$order3->service->name}} "
                                                data-toggle="modal" 
                                                data-target="#edit_order">تعديل 
                                            </button>
                                            <button class="btn btn-outline-danger btn-sm " 
                                                data-order_id="{{ $order3->id }}" 
                                                data-service_name=" {{$order3->service->name}} " 
                                                data-order_number="{{$order3->order_number}} " 
                                                data-toggle="modal" 
                                                data-target="#delete_order">حذف
                                            </button>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card-header" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"aria-hidden="true">
		<div class="container">
		    <div class="modal fade" id="edit_order">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header text-right">
                            <h5 class="modal-title"> تغيير حالة الدفع </h5>
                            <button dir="ltr" type="button" class="close " data-dismiss="modal">&times;</button>
                        </div>
                        <form action='user_order/update' method="post" autocomplete="off" enctype="multipart/form-data">
                            {{ method_field('patch') }}
                            {{ csrf_field() }}
                            <!--model body -->
                            <div class="modal-body text-right">
                                <div class="form-group">
                                    <label class="h6"style="color:DodgerBlue;" > اسم الخدمة </label>
                                    <input type="hidden" class="form-control"  id="order_id" name="order_id" value="">
                                    <input type="text" class="form-control" id="service_name" name="service_name" readonly>
                                </div>
                                <label  class="my-1 mr-2 h6 "style="color:DodgerBlue;" for="inlineFormCustomSelectPref">حالة الدفع </label>
                                <input class="form-control border-dark fc-datepicker" name="Payment_Date" type="text" value="{{ date('Y-m-d') }}" hidden>
                                <select name="valu_PaymentStatus" id="valu_PaymentStatus" class="form-control" required>
                                    <option value="" selected disabled>نوع الدفعة</option>
                                        <option value="1"> دفع كامل المبلغ</option>
                                        <option value="2"> دفع جزء من المبلغ</option>
                                </select>


                                <br>
                                <div class="form-group">
                                    <label class="h6" style="color:DodgerBlue;" >  رقم البطاقة الإئتمانية / الحساب البنكي </label>
                                    <input type="text" class="form-control" id="pyment_card" name="pyment_card">
                                </div>
                                <div class="form-group">
                                    <label class="h6" style="color:DodgerBlue;">ادخل قيمة المبلغ المراد تحويله</label>
                                    <input type="number" class="form-control" id="Amount_current" name="Amount_current">
                                </div>
                                <label class="h6" style="color:DodgerBlue;"> <a>طرق الدفع</a> :   </label>
                                
                                <img src="{{URL::asset('assets/img/faces/logo.png')}}" class="logo-icon" alt="logo"> &nbsp;&nbsp;
                                <img src="{{URL::asset('assets/img/faces/12.png')}}" class="logo-icon" alt="logo"> 
                               
                                <div class="form-group">  
                                <br>                             
                                    <p>يمكنك رفع مرفق جديد مع إمكانية الإحتفاظ بالمرفق السابق</p>
                                    <label class="btn btn-default btn-info">
                                    <input type="file" class="form-control" name="file_name"  hidden>
                                    <input type="hidden" class="form-control" name="order_number" id="order_number" value="order_number">
                                        إضافة مرفق
                                    </label>
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1" class="h6">ملاحظات أضافية </label>
                                    <textarea class="form-control" id="note" name="note" rows="1"></textarea>
                                </div>
                            </div>
                            <!-- Modal footer -->
                            <div dir="ltr" class="modal-footer">
                                <button type="button" class="btn btn-dark" data-dismiss="modal">اغلاق</button>
                                <button type="submit" class="btn btn-primary">تاكيد</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="delete_order" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">حذف الطلب </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="user_order/destroy" method="post" enctype="multipart/form-data">
                    {{ method_field('delete') }}
                    {{ csrf_field() }}
                        <div class="modal-body">
                            <p class="h6">هل انت متاكد من عملية الحذف ؟</p><br>
                            <input type="hidden" name="order_id" id="order_id" value="">
                            <input type="hidden" name="order_number" id="order_number" value="">
                            <input class="form-control" name="service_name" id="service_name" type="text" readonly>
                        </div>
                        <div dir="ltr" class="modal-footer">
                            <button type="button" class="btn btn-dark" data-dismiss="modal">اغلاق</button>
                            <button type="submit" class="btn btn-primary">تاكيد</button>
                        </div>
                </form>
            </div>
        </div>
    </div>
@endsection