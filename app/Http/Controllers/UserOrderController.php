<?php

namespace App\Http\Controllers;

use App\Attachments_order;
use App\orders;
use App\sections;
use Illuminate\Http\Request;
use Facade\FlareClient\View;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use App\Exports\ordersExport;
use App\Notifications\Add_order;
use App\services;
use App\User;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Facades\Excel;

class UserOrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('orders.user_create_orders');
    }

    public function index2()
    {
        $orders1=orders::with(array('service' => function($query) {
            $query->withTrashed();
        }))->where(['Value_OrderStatus'=>1,
        'user'=>Auth::user()->name])
        ->get();

        $orders2=orders::with(array('service' => function($query) {
            $query->withTrashed();
        }))->where(['Value_OrderStatus'=>2,
        'user'=>Auth::user()->name])
        ->get();

        $orders3=orders::with(array('service' => function($query) {
            $query->withTrashed();
        }))->where(['Value_OrderStatus'=>3,
        'user'=>Auth::user()->name])
        ->get();

        return view('orders.costomer_order',compact('orders1','orders2','orders3'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($id)
    {
        $services=services::where('id',$id)->first();
        return view('orders.user_create_orders',compact('services'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    if($request->provider_id == (Auth::user()->id)){
            session()->flash('eror', 'لا يمكنك شراء خدمة تقدمها أنت ');
            return back();
    }else{

        $uuid = Str::uuid()->toString();
        orders::create([
            'order_number' => $uuid,
            'order_Date' => $request->order_Date,
            'Due_Date' => $request->Due_Date,
            'service_id' => $request->service_id,
            'section_id' => $request->section_id,
            'Amount_collection' => $request->service_price,
            'OrderStatus' => 'معلق ',
            'Value_OrderStatus' => 0,
            'PaymentStatus' => 'غير مدفوع',
            'Value_PaymentStatus' =>3,  
            'user' => (Auth::user()->name),
            'note' => $request->note,
            'user_id'=>(Auth::user()->id),
        ]);

        if ($request->hasFile('file_name')) {
            $this->validate($request, [

                'file_name' => 'mimes:pdf,jpeg,png,jpg',

                ], [
                    'file_name.mimes' => 'صيغة المرفق يجب ان تكون   pdf, jpeg , png , jpg',
                ]);
            $costmer_files= $request->file_name;
            $file_names = $costmer_files->getClientOriginalName();
            $order_id = orders::latest()->first()->id;
            $order_number = orders::latest()->first()->order_number;
            Attachments_order::create([
            'file_name'=> $file_names,
            'order_number' =>  $order_number,
            'Created_by' => (Auth::user()->name),
            'order_id' => $order_id,
            ]);

            // move pic
            $costmer_files->move(public_path('Attachments/' . $order_number),$file_names);
        }
        session()->flash('Add', 'تم اضافة الطلب بنجاح');
        return redirect('/costomer_order');

    }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $orders=orders::findOrFail($request->order_id);
        if ($request->hasFile('file_name')) {
            $this->validate($request, [

                'file_name' => 'mimes:pdf,jpeg,png,jpg',

                ], [
                    'file_name.mimes' => 'صيغة المرفق يجب ان تكون   pdf, jpeg , png , jpg',
                ]);
            $costmer_files= $request->file_name;
            $file_names = $costmer_files->getClientOriginalName();
            $order_id =$request->order_id;
            $order_number = $request->order_number;
            Attachments_order::create([
            'file_name'=> $file_names,
            'order_number' =>  $order_number,
            'Created_by' => (Auth::user()->name),
            'order_id' => $order_id,
            ]);


            // move pic
            $costmer_files->move(public_path('Attachments/' . $order_number),$file_names);
            session()->flash('update', 'تم تعديل الطلب بنجاح');
            return back();
        }
        if($request->valu_PaymentStatus ==1 ){
            $PaymentStatus ="مدفوع";
        }elseif($request->valu_PaymentStatus ==2){
            $PaymentStatus ="مدفوع جزئيا";
        }
        $orders->update([
            'Value_PaymentStatus'=>$request->valu_PaymentStatus,
            'note'=>$request->note,
            'PaymentStatus'=>$PaymentStatus,
            'Payment_Date'=>$request->Payment_Date,
            'pyment_card'=>$request->pyment_card,
            'Amount_current'=>$request->Amount_current,

        ]);
        session()->flash('update', 'تمت عملية الدفع بنجاح');
        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $order = orders::findOrFail($request->order_id);
        $attachments=Attachments_order::where('order_id',$request->order_id)->first();
    if (!empty($attachments->order_number)) {

        Storage::disk('public_uploads')->deleteDirectory($attachments->order_number);
    }
        $order->forceDelete();

        session()->flash('delete', 'تم حذف الطلب بنجاح');
        return back();


    }

    public function viewFile($id){
        $attachments=Attachments_order::where(['order_id'=>$id])->get();
        return view ('orders.costomer_attachment',compact('attachments'));
    }

    public function openFile($order_number,$file_name)

    {
        $files = Storage::disk('public_uploads')->getDriver()->getAdapter()->applyPathPrefix($order_number.'/'.$file_name);
        return response()->file($files);
    }
    public function download_file($order_number,$file_name)

    {
        $down = Storage::disk('public_uploads')->getDriver()->getAdapter()->applyPathPrefix($order_number.'/'.$file_name);
        return response()->download($down);
    }

}

