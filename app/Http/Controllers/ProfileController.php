<?php

namespace App\Http\Controllers;

use App\orders;
use App\Rating;
use App\Review;
use App\services;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\User;
use App\Traits\PhotoTrait;
use Illuminate\Support\Facades\File;
use Facade\FlareClient\View;
use Illuminate\Support\Facades\DB;



class ProfileController extends Controller
{
    use PhotoTrait;
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function craete()
    {
        //
    }

    public function index()
    {
        $user = Auth::user();
        $id = $user->id;
        $services = services::with('provider')->select('id', 'name', 'description', 'service_provider_id', 'image')->where('service_provider_id', Auth::user()->id)->where('status', 'فعالة')->get();


        $services_count = DB::table('services')->where('service_provider_id', Auth::user()->id)->where('status', 'فعالة')->count();

        $provider_rat_avg = services::where('service_provider_id', Auth::user()->id)->where('status', 'فعالة')->join('ratings', 'ratings.services_id', '=', 'services.id')->avg('ratings.stars_rated');

        $orders = orders::with('service')->whereHas('service', function ($q) use ($id) {
            $q->where('service_provider_id', $id);
        })->count();

        $percent = 0.9;
        $query = orders::with('service')
            ->whereHas('service', function ($q) use ($id) {
                $q->where('service_provider_id', $id);
            })
            ->where([
                ['Value_PaymentStatus', '=', 1]
            ])->select(
                DB::raw("$percent* Amount_collection as amount"),
                "order_number",
                "order_Date",
                "Due_Date",
                "service_id",
                "section_id",
                "Amount_collection",
                "OrderStatus",
                "Value_OrderStatus",
                "PaymentStatus",
                "Value_PaymentStatus",
                "user",
                "note",
                "Payment_Date"
            );
        $allOrders = $query->get();
        $allOrdersArr = $allOrders->toArray();
        $total = 0;

        foreach ($allOrdersArr as $item) {
            $total += $item['amount'];
        }
        return view('profile', compact('user', 'services', 'services_count', 'orders', 'total', 'provider_rat_avg'));
    }

    public function index2($id)
    {
        $user = User::findOrFail($id);
        $services = services::where('service_provider_id', $id)->get();
        return view('user_profile', compact('user', 'services'));
    }

    public function edit($name)
    {
        $user = Auth::user();
        return view('editprofile', compact('user'));
    }

    public function update(Request $request, $name)
    {
        $user = Auth::user();
        $rules = $this->getRules();
        $messages = $this->getMessages();
        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInputs($request->all());
        } elseif (request()->hasFile('avatar')) {
            $imagePath = 'images/profile/' . $user->avatar;
            if (File::exists($imagePath)) {
                File::delete($imagePath);
            }
            $avatar_name = $this->saveImage($request->avatar, 'images/profile/');
            $query = User::find($user->id);
            $query->update([
                'name' => $request->name,
                'email' => $request->email,
                'bio' => $request->bio,
                'socialite' => $request->socialite,
                'avatar' => '/images/profile/' . $avatar_name,
            ]);
            if ($query) {
                return redirect()->back()->with('success', 'تم التحديث بنجاح');
            } else {
                return back()->with('fail', 'فشل التحديث');
            }
        } else {
            $query = User::find($user->id);
            $query->update([
                'name' => $request->name,
                'email' => $request->email,
                'bio' => $request->bio,
            ]);
           // dd($query);
          //  exit();
            if ($query) {
                return redirect()->back()->with('success', 'تم التحديث بنجاح');
            } else {
                return back()->with('fail', 'فشل التحديث');
            }
        }
    }


    public function services_of_provider($service_id, $provider_id)
    {
        $user = Auth::user();
        $service = services::with('provider')->select('id', 'name', 'description', 'service_provider_id', 'image', 'price')->where('id', $service_id)->first();

        $services_count = DB::table('services')->where('service_provider_id', $provider_id)->count();

        $orders_not_fininsh = orders::with('service')->whereHas('service', function ($q) use ($provider_id) {
            $q->where('service_provider_id', $provider_id);
        })->where([['Value_OrderStatus', '=', 2]])->count();

        $orders = orders::with('service')->whereHas('service', function ($q) use ($provider_id) {
            $q->where('service_provider_id', $provider_id);
        })->count();

        $buyers = orders::with('service')->whereHas('service', function ($q) use ($provider_id, $service_id) {
            $q->where('service_provider_id', $provider_id)->where('id', $service_id);
        })->where([['Value_PaymentStatus', '=', 1]])->count();

        $ratings = Rating::where('services_id', $service->id)->get(); //جبت بيانات جدول التقييم تبع الخدمة المحددة مشان اقدر وصل لقيم اعمدة الجدول بالبليد
        $ratings_sum = Rating::where('services_id', $service->id)->sum('stars_rated'); // جمع قيم العمود المحدد تبع الخدمة المحددة وهيك بجيب مجموع النجوم تبع هالخدمة
        $user_rating = Rating::where('services_id', $service->id)->where('user_id', $user->id)->first(); //تقييم المشتري على الخدمة
        $reviews = Review::where('service_id', $service->id)->get();
        if ($ratings->count() > 0) {
            $rating_value = $ratings_sum / $ratings->count(); //قيمة التقييم هي مجموع النجوم على عدد التقييمات
        } else {
            $rating_value = 0;
        }

        return view('services.service_desc', compact('user', 'service', 'services_count', 'orders_not_fininsh', 'orders', 'buyers', 'ratings', 'rating_value', 'user_rating', 'reviews'));
    }


    protected function getRules()
    {
        return $rules =
            [
                'name' => 'required|max:255',
                'email' => 'required|email|max:255', // ما عملت الايميل يونيك لان صار لما اعمل تحديث بدون ما غير الايميليقلي انو الايميل موجود مسبقا لان قبل ما يحدث حيشوف الداتا بيز وحيلاقي الايميل
                'bio' => 'max:800',
                'socialite' => 'email|max:255',
                'avatar' => 'sometimes|image|mimes:jpg,jpeg,png|max:5000',
            ];
    }

    protected function getMessages()
    {
        return $messages =
            [
                'name.required' => 'لم تدخل اسمك',
                'name.max' => 'الاسم الذي ادخلته كبير جدا',
                'email.required' => 'لم تدخل بريدك الالكتروني',
                'email.email' => 'البريد الالكتروني الذي أدخلته غير صحيح',
                // 'email.unique' => 'البريد الالكتروني الذي أدخلته مستخدم في حساب آخر',
                'bio.max' => 'النبذة التي أدخلتها كبيرة جداالحد الاقصى هو 800',
                // 'socialite.unique' => ' عنوان Githubالذي أدخلته مستخدم في حساب آخر',
                'socialite.email' => 'عنوان Github الذي أدخلته غير صحيح',
            ];
    }

    // }       'socialite.email' =>'عنوان Github الذي أدخلته غير صحيح',

}
