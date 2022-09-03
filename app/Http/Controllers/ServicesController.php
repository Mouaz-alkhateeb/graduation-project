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

class ServicesController extends Controller
{
    use PhotoTrait;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $providers= User::select('*')->where('roles_name','["provider"]')->get();
        $sections = sections::all();
        $services = services::all();
        $sections2 = DB::table('sections')->whereNotNull('parent_id')->get();
        return view('services.services', compact('sections', 'services', 'sections2','providers'));

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
     *
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $services = services::where('id',$id)->first();
        return view('services.details_service',compact('services'));
    }
    /**
     * Show the form for editing the specified resource.
     *

     * @return \Illuminate\Http\Response
     */
    public function edit()
    {
        //
    }
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
    public function getServicesSubSections($id)
    {
        $sections = DB::table('sections')->whereNotNull('parent_id')->get();
        $ServicesSubSections = services::with('section')->where('section_id', $id)->get();
       return view('sections.ServicesSubSections', compact('ServicesSubSections', 'sections'));
    }
    public function getServicesDetails($id)
    {

    $services = services::where('section_id', $id)->first();
    return view('services.ServiceDetails',compact('services'));
    }

    public function MarkAsReadAll ()
    {
        $userUnreadNotification= auth()->user()->unreadNotifications;
        if($userUnreadNotification) {
            $userUnreadNotification->markAsRead();
            return back();
        }


    }
}
