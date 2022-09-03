<?php

namespace App\Http\Controllers;

use App\Notifications\Add_service;
use App\orders;
use App\sections;
use App\services;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

use App\Traits\PhotoTrait;

class UserServicesController extends Controller
{

    use PhotoTrait;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $services=services::where('service_provider_id',Auth::user()->id)->get();
        $sections =sections::all();
        $sections2 = DB::table('sections')->whereNotNull('parent_id')->get();
        return view('services.user_services', compact('sections','services','sections2'));
    }
    public function index2($id){
        $services=services::findOrFail($id);
        return view('services.user_detalis_service',compact('services'));
    }
    public function showAllServices()
    {
        $services=services::where('status','فعالة')->with('ratings')->get();
        return view('services.all_services',compact('services'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($request->hasFile('image')){
        $image=$this->saveImage($request->image,'images/serviceImage/');
        services::create([
            'name' => $request->service_name,
            'section_id' => $request->section_id,
            'price'=>$request->price,
            'image'=>'images/serviceImage/'.$image,
            'description' => $request->description,
            'service_provider_id' => (Auth::user()->id),
            'status' => 'معلقة',
            'Value_status' => 2,
        ]);
        $user = User::get();
        $services=services::latest()->first();
        Notification::send($user, new Add_service($services));

        session()->flash('Add', ' تم أرسال طلبك الى المسؤول سوف يتم أبلاغك في حال الموافقة على أضافة هذه الخدمة  ');
        return redirect('/userservices');
    }else{
        session()->flash('msg','أدخل صورة  تعبر عن الخدمة ');
        return redirect('/userservices');
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
        $sectionId = $request->section_id;
        $service = services::findOrFail($request->service_id);
        $serviceOldImage=$service->image;
        if($request->hasFile('image'))
        {
            if(File::exists($serviceOldImage))
            {
                File::delete($serviceOldImage);
            }
            $image=$this->saveImage($request->image,'images/serviceImage/');
        $service->update([
            'name' => $request->service_name,
            'description' => $request->description,
            'section_id' =>  $sectionId,
            'price' => $request->price,
            'image'=>'images/serviceImage/'.$image,
        ]);

            session()->flash('Edit', 'تم تعديل الخدمة بنجاح');
            return back();
        }else{
            session()->flash('msg','أدخل صورة  تعبر عن الخدمة ');
            return redirect('/userservices');
    }
}


   
    public function destroy(Request $request)
    {
        $service = services::findOrFail($request->service_id);
        $orders=orders::where('service_id',$request->service_id)->get();

        if($service->status == 'معلقة'){
            $serviceOldImage=$service->image;
            if(File::exists($serviceOldImage))
            {
                File::delete($serviceOldImage);
            }
            $service->forceDelete();
            session()->flash('delete', 'تم حذف الخدمة بنجاح');

        }
        elseif($service->status == 'فعالة' and $orders == '[]')
        {
            $serviceOldImage=$service->image;
            if(File::exists($serviceOldImage))
            {
                File::delete($serviceOldImage);
            }
            $service->forceDelete();
            session()->flash('delete', 'تم حذف الخدمة بنجاح');

        }
        else
        {
            foreach($orders as $order){
                if($order->Value_OrderStatus == 2 or $order->Value_OrderStatus == 3 ){

                    session()->flash('noo', 'لا يمكنك حذف الخدمة ولديك طلبات لم تكمل تنفيذها ');
                }
                elseif( $order->Value_OrderStatus == 1 )
                {
                    $service->delete();
                    session()->flash('delete', 'تم حذف الخدمة بنجاح');

                }

            }
        }
    return back();
    }
}


