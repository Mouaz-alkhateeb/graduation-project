@extends('layouts.master')
@section('css')
    <!---Internal  Prism css-->
    <link href="{{ URL::asset('assets/plugins/prism/prism.css') }}" rel="stylesheet">
    <!---Internal Input tags css-->
    <link href="{{ URL::asset('assets/plugins/inputtags/inputtags.css') }}" rel="stylesheet">
    <!--- Custom-scroll -->
    <link href="{{ URL::asset('assets/plugins/custom-scroll/jquery.mCustomScrollbar.css') }}" rel="stylesheet">
@endsection
@section('title')
    تفاصيل الطلب
@stop
@section('page-header')
    <!-- breadcrumb -->
    <div class="breadcrumb-header justify-content-between">
        <div class="my-auto">
            <div class="d-flex">
                <h4 class="content-title mb-0 my-auto">الطلبات </h4><span class="text-muted mt-1 tx-13 mr-2 mb-0">/
                    تفاصيل الطلب</span>
            </div>
        </div>

    </div>
    <!-- breadcrumb -->
@endsection
@section('content')
           @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            @if (session()->has('delete'))
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong>{{ session()->get('delete') }}</strong>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif
            @if (session()->has('Add'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>{{ session()->get('Add') }}</strong>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            @endif


    <!-- row opened -->
<div class="row row-sm">
        <div class="col-xl-12">
            <!-- div -->
            <div class="card mg-b-20" id="tabs-style2">
                <div class="card-body">
                    <div class="text-wrap">
                        <div class="example">
                            <div class="panel panel-primary tabs-style-2">
                                <div class=" tab-menu-heading">
                                    <div class="tabs-menu1">
                                        <!-- Tabs -->
                                        <ul class="nav panel-tabs main-nav-line">
                                            <li><a href="#tab4" class="nav-link active" data-toggle="tab">معلومات
                                                    الطلب</a></li>
                                            <li><a href="#tab6" class="nav-link" data-toggle="tab">المرفقات</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="panel-body tabs-menu-body main-content-body-right border">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab4">
                                            <div class="table-responsive mt-15">

                                                <table class="table table-striped" style="text-align:center">
                                                    <tbody>
                                                        <tr>
                                                            <th scope="row" style="color:MediumSeaGreen;">رقم الطلب</th>
                                                            <td>{{ $order->order_number }}</td>
                                                            <th scope="row" style="color:MediumSeaGreen;">تاريخ الطلب</th>
                                                            <td>{{ $order->order_Date }}</td>
                                                            <th scope="row" style="color:MediumSeaGreen;">تاريخ الإستلام</th>
                                                            <td>{{ $order->Due_Date }}</td>
                                                            <th scope="row" style="color:MediumSeaGreen;">القسم</th>
                                                            <td>{{ $order->Section->name }}</td>
                                                        </tr>

                                                        <tr>
                                                            <th scope="row" style="color:MediumSeaGreen;">الخدمة</th>
                                                            <td>{{ $order->service->name }}</td>
                                                            <th scope="row" style="color:MediumSeaGreen;">المستفيد </th>
                                                            <td>{{ $order->user }}</td>
                                                            <th scope="row" style="color:MediumSeaGreen;">حالة الطلب </th>

                                                            @if ($order->Value_OrderStatus == 1)
                                                                <td><span
                                                                        class="badge badge-pill badge-success">{{ $order->OrderStatus }}</span>
                                                                </td>
                                                            @elseif($order->Value_OrderStatus ==2)
                                                                <td><span
                                                                        class="badge badge-pill  badge-warning">{{ $order->OrderStatus }}</span>
                                                                </td>
                                                            @else
                                                                <td><span
                                                                        class="badge badge-pill badge-danger">{{ $order->OrderStatus }}</span>
                                                                </td>
                                                            @endif
                                                            <th scope="row" style="color:MediumSeaGreen;">حالة الدفع </th>

                                                            @if ($order->Value_PaymentStatus == 1)
                                                                <td><span
                                                                        class="badge badge-pill badge-success">{{ $order->PaymentStatus }}</span>
                                                                </td>
                                                            @elseif($order->Value_PaymentStatus ==2)
                                                                <td><span 
                                                                        class="badge badge-pill badge-warning">{{ $order->PaymentStatus }}</span>
                                                                </td>
                                                            @else
                                                                <td><span
                                                                        class="badge badge-pill badge-danger">{{ $order->PaymentStatus }}</span>
                                                                </td>
                                                            @endif
                                                        </tr>
                                                        
                                                        <tr>
                                                            <th scope="row" style="color:MediumSeaGreen;">سعر الخدمة</th>
                                                            <td>{{ $order->Amount_collection }}</td>
                                                            <th scope="row" style="color:MediumSeaGreen;">المبلغ المدفوع حاليا</th>
                                                            <td>{{ $order->Amount_current }}</td>
                                                                @can('قبول ورفض الطلبات')
                                                                    <th scope="row" style="color:MediumSeaGreen;">إجراءات مقدم الخدمة</th>
                                                                    <td>
                                                                            <a  class="btn btn-outline-success btn-sm " 
                                                                            href="{{url('ApprovalOrder',$order->id)}}">قبول  
                                                                            </a>  
                                                                            <a  class="btn btn-outline-danger btn-sm " 
                                                                            href="{{url('CancelOrder',$order->id)}}">رفض  
                                                                            </a>  
                                                                    </td>  
                                                                @endcan
                                                        </tr>
                                                        <tr>
                                                        <th scope="row" style="color:MediumSeaGreen;">ملاحظات</th>
                                                            <td>{{ $order->note }}</td>     
                                                        
                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                        <div class="tab-pane" id="tab6">
                                            <!--المرفقات-->
                                            <div class="card card-statistics">
                                                    <div class="card-body">
                                                        <p class="text-danger">* صيغة المرفق pdf, jpeg ,.jpg , png </p>
                                                        <h5 class="card-title" style="color:MediumSeaGreen;">اضافة مرفقات</h5>
                                                        <form method="post" action="{{ url('/OrderAttachments') }}"
                                                            enctype="multipart/form-data">
                                                            {{ csrf_field() }}
                                                            <div class="custom-file">
                                                                <input type="file" class="custom-file-input" id="customFile"
                                                                    name="file_name" required>
                                                                <input type="hidden" id="customFile" name="order_number"
                                                                    value="{{ $order->order_number }}">
                                                                <input type="hidden" id="order_id" name="order_id"
                                                                    value="{{ $order->id }}">
                                                                <label class="custom-file-label" for="customFile">حدد
                                                                    المرفق</label>
                                                            </div><br><br>
                                                            <button type="submit" class="btn btn-primary btn-sm "
                                                                name="uploadedFile">تاكيد</button>
                                                        </form>
                                                    </div>
                                                <br>
                                                <div class="table-responsive mt-15">
                                                    <table class="table center-aligned-table mb-0 table table-hover"
                                                        style="text-align:center">
                                                        <thead>
                                                            <tr class="text-dark">
                                                                <th scope="col">#</th>
                                                                <th scope="col" style="color:MediumSeaGreen;">اسم الملف</th>
                                                                <th scope="col" style="color:MediumSeaGreen;">قام بالاضافة</th>
                                                                <th scope="col" style="color:MediumSeaGreen;">تاريخ الاضافة</th>
                                                                <th scope="col" style="color:MediumSeaGreen;">الإجراءات </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <?php $i = 0; ?>
                                                            @foreach ($attachments as $attachment)
                                                                <?php $i++; ?>
                                                                <tr>
                                                                    <td>{{ $i }}</td>
                                                                    <td>{{ $attachment->file_name }}</td>
                                                                    <td>{{ $attachment->Created_by }}</td>
                                                                    <td>{{ $attachment->created_at }}</td>
                                                                    <td>
                                                                        <a class="btn btn-outline-success btn-sm"
                                                                            href="{{ url('view_file') }}/{{ $order->order_number }}/{{ $attachment->file_name }}"
                                                                            role="button"><i class="fas fa-eye"></i>&nbsp;
                                                                            عرض
                                                                        </a>

                                                                            <a class="btn btn-outline-info btn-sm"
                                                                            href="{{ url('download') }}/{{ $order->order_number }}/{{ $attachment->file_name }}"
                                                                            role="button"><i
                                                                                class="fas fa-download"></i>&nbsp;
                                                                            تحميل</a>

                                                                            <button class="btn btn-outline-danger btn-sm"
                                                                                data-toggle="modal"
                                                                                data-file_name="{{ $attachment->file_name }}"
                                                                                data-order_number="{{ $attachment->order_number }}"
                                                                                data-id_file="{{ $attachment->id }}"
                                                                                data-target="#delete_file">حذف</button>

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
                        </div>
                    </div>
                </div>
            </div>
            <!-- /div -->
        </div>
</div>
<!-- /row -->
<div class="modal fade" id="delete_file" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">حذف المرفق</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('delete_file') }}" method="post">

                    {{ csrf_field() }}
                    <div class="modal-body">
                        <p class="text-center">
                        <h6 style="color:red"> هل انت متاكد من عملية حذف المرفق ؟</h6>
                        </p>

                        <input type="hidden" name="id_file" id="id_file" value="">
                        <input type="hidden" name="file_name" id="file_name" value="">
                        <input type="hidden" name="order_number" id="order_number" value="">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">الغاء</button>
                        <button type="submit" class="btn btn-danger">تاكيد</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    </div>
    <!-- Container closed -->
    </div>
    <!-- main-content closed -->
@endsection
@section('js')
    <!--Internal  Datepicker js -->
    <script src="{{ URL::asset('assets/plugins/jquery-ui/ui/widgets/datepicker.js') }}"></script>
    <!-- Internal Select2 js-->
    <script src="{{ URL::asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <!-- Internal Jquery.mCustomScrollbar js-->
    <script src="{{ URL::asset('assets/plugins/custom-scroll/jquery.mCustomScrollbar.concat.min.js') }}"></script>
    <!-- Internal Input tags js-->
    <script src="{{ URL::asset('assets/plugins/inputtags/inputtags.js') }}"></script>
    <!--- Tabs JS-->
    <script src="{{ URL::asset('assets/plugins/tabs/jquery.multipurpose_tabcontent.js') }}"></script>
    <script src="{{ URL::asset('assets/js/tabs.js') }}"></script>
    <!--Internal  Clipboard js-->
    <script src="{{ URL::asset('assets/plugins/clipboard/clipboard.min.js') }}"></script>
    <script src="{{ URL::asset('assets/plugins/clipboard/clipboard.js') }}"></script>
    <!-- Internal Prism js-->
    <script src="{{ URL::asset('assets/plugins/prism/prism.js') }}"></script>
    <script>
        $('#delete_file').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget)
            var id_file = button.data('id_file')
            var file_name = button.data('file_name')
            var order_number = button.data('order_number')
            var modal = $(this)

            modal.find('.modal-body #id_file').val(id_file);
            modal.find('.modal-body #file_name').val(file_name);
            modal.find('.modal-body #order_number').val(order_number);
        })

    </script>




@endsection
