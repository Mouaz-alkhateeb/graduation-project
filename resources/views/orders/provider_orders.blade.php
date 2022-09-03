@extends('layouts.masterProfile')
@section('css')
@endsection
@section('title')
طلباتي 
@stop

@section('content')
    <div class="container-fluid">
        @if (session()->has('Add'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>{{ session()->get('Add') }}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @endif
        @if (session()->has('delete_order'))
        <div class="pt-5 mt-5">
            <div class=" alert alert-success alert-dismissible fade show text-right" role="alert">
                {{ session()->get('delete_order') }}
            </div>
        </div>
        @endif
        @if (session()->has('not_delete_order'))
        <div class="pt-5 mt-5">
            <div class=" alert alert-danger alert-dismissible fade show text-right" role="alert">
                {{ session()->get('not_delete_order') }}
            </div>
        </div>
        @endif

        @if (session()->has('status_update'))
        <div class="pt-5 mt-5">
            <div class=" alert alert-success alert-dismissible fade show text-right" role="alert">
                {{ session()->get('status_update') }}
            </div>
        </div>
        @endif

        @if (session()->has('archive_order'))
        <div class="pt-5 mt-5">
            <div class=" alert alert-success alert-dismissible fade show text-right" role="alert">
                {{ session()->get('archive_order') }}
            </div>
        </div>
        @endif
        @if (session()->has('restore_order'))
        <script>
        window.onload = function() {
            notif({
                msg: "تم استعادة الطلب بنجاح",
                type: "success"
            })
        }
        </script>
        @endif
        <!-- row -->
        <div class="breadcrumb-header justify-content-between pt-5 mt-5 mr-5 pr-5">
            <div class="my-auto">
                <div class="d-flex">
                    <h4 class="content-title mb-0 my-auto">جميع الطلبات</h4>
                </div>
            </div>
        </div>
        <div class="row mr-5 ml-5 pr-3 pl-3">
            <!--div-->
            <div class="col-xl-12">
                <div class="card mg-b-20">
                    <div class="card-header pb-2 text-right">
                        <a class="modal-effect btn btn-sm btn-primary" href=" {{ url('export_orders') }}"
                            style="color:white"><i class="fas fa-file-download"></i>&nbsp;تصدير اكسيل</a>

                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example1" class="table key-buttons text-md-nowrap" data-page-length='50'
                                style="text-align: center">
                                <thead>
                                    <tr>
                                        {{-- <th class="wd-15p border-bottom-0">رقم الطلب </th> --}}
                                        <th class="wd-12p border-bottom-0">الخدمة المطلوبة </th>
                                        <th class="wd-12p border-bottom-0">اسم الزبون</th>
                                        <th class="wd-12p border-bottom-0">تاريخ الطلب </th>
                                        <th class="wd-12p border-bottom-0">تاريخ التسليم</th>
                                        <th class="wd-12p border-bottom-0"> القسم </th>
                                        <th class="wd-12p border-bottom-0">حالة الطلب </th>
                                        <th class="wd-12p border-bottom-0"> الإجراءات</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    @foreach ($orders as $order)

                                    <tr>
                                        <td>{{ $order->service->name}}</td>
                                        <td>{{ $order->user }} </td>
                                        <td>{{ $order->order_Date }}</td>
                                        <td>{{ $order->Due_Date }}</td>
                                        <td>{{ $order->section->name }}</td>
                                        <td>{{ $order->OrderStatus}}</td>
                                        <td>
                                            <div class="dropdown">
                                                <button aria-expanded="false" aria-haspopup="true"
                                                    class="btn ripple btn-primary btn-sm" data-toggle="dropdown"
                                                    type="button">العمليات<i class="fas fa-caret-down ml-1"></i>
                                                </button>
                                                <div class="dropdown-menu tx-13" >
                                                    <a class="dropdown-item" href="#" data-order_id="{{ $order->id }}"
                                                        data-toggle="modal" data-target="#delete_order">
                                                        <i class="text-danger fas fa-trash-alt"></i>&nbsp;&nbsp;حذف الطلب
                                                    </a>
                                                    <a class="dropdown-item"
                                                        href="{{ URL::route('provider_status_show',[$order->id]) }}">
                                                        <i class="cf cf-zec"></i> &nbsp; حالة الطلب و الدفع
                                                    </a>
                                                    <a class="dropdown-item"
                                                        href="{{ url('provider_details_order') }}/{{ $order->id }}">
                                                        <i class="fas fa-eye"></i> &nbsp; تفاصيل الطلب
                                                    </a>
                                                </div>
                                            </div>
                                        </td>
                                        @if(!empty($order->service->deleted_at))
                                        <td class="t2">
                                            ! لقد قمت بحذف هذه الخدمة
                                        </td>
                                        @endif
                                    </tr>
                                    @endforeach

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--/div-->
        </div>

        <div class="modal fade" id="delete_order" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">حذف الطلب</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="{{ route('providerOrders.destroy', 'test') }}" method="post">
                        {{ method_field('delete') }}
                        {{ csrf_field() }}
                        <div class="modal-body">
                            <p>هل انت متاكد من عملية الحذف ؟</p><br>

                            <input type="hidden" name="order_id" id="order_id" value="">

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">الغاء</button>
                            <button type="submit" class="btn btn-danger">تاكيد</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>




    </div>
@endsection    
@section('js')
    <script>
        $('#delete_order').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget)
            var order_id = button.data('order_id')
            var modal = $(this)
            modal.find('.modal-body #order_id').val(order_id);
        })
    </script>
@endsection



