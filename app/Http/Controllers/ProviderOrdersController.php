<?php

namespace App\Http\Controllers;

use App\orders;
use Illuminate\Http\Request;
use App\sections;
use Illuminate\Support\Facades\Auth;
use App\Attachments_order;
use Illuminate\Support\Facades\Storage;

class ProviderOrdersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     *
     *
     *
     *
     */
    public function index()
    {
        $user = Auth::user();
        $id = $user->id;
        $orders = orders::with(array('service' => function ($query) {
            $query->withTrashed();
        }))->whereHas('service', function ($q) use ($id) {
            $q->where('service_provider_id', $id);
        })->get();
        $sections = sections::all();
        return view('orders.provider_orders', compact('orders', 'sections'));
    }


    public function status_show($id)
    {
        $orders = orders::where('id', $id)->first();
        return view('orders.provider_update_status', compact('orders'));
    }

    public function status_update($id, Request $request)
    {
        $orders = orders::findOrFail($id);

        if ($request->OrderStatus === 'منفذ') {
            $orders->update([
                'Value_OrderStatus' => 1,
                'OrderStatus' => $request->OrderStatus,
            ]);
        } else {
            $orders->update([
                'Value_OrderStatus' => 2,
                'OrderStatus' => $request->OrderStatus,
            ]);
        }
        return redirect('/providerOrders')->with(['status_update' => 'تم تحديث حالة الطلب بنجاح']);;
    }

    public function show($id)
    {
        $order = orders::where('id', $id)->first();
        $attachments  = Attachments_order::where('order_id', $id)->get();
        return view('orders.provider_details_order', compact('attachments', 'order'));
    }

    public function destroy(Request $request)
    {
        $id = $request->order_id;
        $order = orders::where('id', $id)->first();
        $value_Payment = $order->Value_PaymentStatus;
        $value_Order = $order->Value_OrderStatus;
        $Details = Attachments_order::where('order_id', $id)->first();
        $id_page = $request->id_page;
        if ($value_Payment === '3' || $value_Order === '3') {
            if (!$id_page == 2) {
                if (!empty($Details->order_number)) {
                    Storage::disk('public_uploads')->deleteDirectory($Details->order_number);
                }
                $order->forceDelete();
                return redirect('/providerOrders')->with(['delete_order' => 'تم حذف الطلب بنجاح']);
            } else {
                $order->delete();
                return redirect('/providerOrders')->with(['archive_order' => 'تم أرشفة الطلب بنجاح']);
            }
        } else {
            return redirect('/providerOrders')->with(['not_delete_order' => 'لا يمكن حذف الطلب لان الزبون قام بدفع المبلغ او انك قمت بتنفيذ الطلب']);
        }
    }
    public function destroyfile(Request $request)
    {
        $order = Attachments_order::findOrFail($request->id_file);
        $order->delete();
        Storage::disk('public_uploads')->delete($request->order_number . '/' . $request->file_name);
        session()->flash('delete', 'تم حذف المرفق بنجاح');
        return back();
    }
    public function open_file($order_number, $file_name)
    {
        $files = Storage::disk('public_uploads')->getDriver()->getAdapter()->applyPathPrefix($order_number . '/' . $file_name);
        return response()->file($files);
    }

    public function download_file($order_number, $file_name)
    {
        $down = Storage::disk('public_uploads')->getDriver()->getAdapter()->applyPathPrefix($order_number . '/' . $file_name);
        return response()->download($down);
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
        //
    }
    public function ApprovalOrder($id)
    {
        $data = orders::find($id);
        $data->OrderStatus = 'غير منفذ';
        $data->Value_OrderStatus = '3';
        $data->save();
        return back();
    }
}
