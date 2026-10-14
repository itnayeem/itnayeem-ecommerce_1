<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\Order;
use App\Models\User;
use App\Models\Product;
use App\Models\Customer;
use Carbon\Carbon;
use Session;
use Toastr;
use Auth;
use DB;
class DashboardController extends Controller
{
    public function __construct()
    {
        // $this->middleware('auth')->except(['locked','unlocked']);
    }
    public function dashboard(){
        $total_order = Order::count();
        $today_order = Order::where('created_at', '>=', Carbon::today())->count();
        $total_product = Product::count();
        $total_customer = Customer::count();
        $latest_order = Order::latest()->limit(5)->with('customer','product','product.image')->get();
        $latest_customer = Customer::latest()->limit(5)->get();
        $today_delivery = Order::where(['order_status'=>'5'])->where('created_at', '>=', Carbon::today())->count();
        $total_delivery = Order::where(['order_status'=>'5'])->count();
        $last_week = Order::where(['order_status'=>'5'])->whereBetween('created_at', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])->count();
        $last_month = Order::where(['order_status'=>'5'])->whereMonth('created_at', '=', Carbon::now()->subMonth()->month)->count();
        $monthly_sale = Order::select(DB::raw('DATE(created_at) as date','created_at'))->selectRaw("SUM(amount) as amount")->where(['order_status'=>'5'])->groupBy('date')->limit(30)->get();
        return view('backEnd.admin.dashboard',compact('total_order','today_order','total_product','total_customer','latest_order','latest_customer','today_delivery','total_delivery','last_week','last_month','monthly_sale'));
    }
    public function changepassword(){
        return view('backEnd.admin.changepassword');
    }
     public function newpassword(Request $request)
    {
        $this->validate($request, [
            'old_password'=>'required',
            'new_password'=>'required',
            'confirm_password' => 'required_with:new_password|same:new_password|'
        ]);

        $user = User::find(Auth::id());
        $hashPass = $user->password;

        if (Hash::check($request->old_password, $hashPass)) {

            $user->fill([
                'password' => Hash::make($request->new_password)
            ])->save();

            Toastr::success('Success', 'Password changed successfully!');
            return redirect()->route('dashboard');
        }else{
            Toastr::error('Failed', 'Old password not match!');
            return back();
        }
    }
    public function locked(){
        // only if user is logged in
        
            Session::put('locked', true);
            return view('backEnd.auth.locked');
        

        return redirect()->route('login');
    }

    public function unlocked(Request $request)
    {
        if(!Auth::check())
            return redirect()->route('login');
        $password = $request->password;
        if(Hash::check($password,Auth::user()->password)){
            Session::forget('locked');
            Toastr::success('Success', 'You are logged in successfully!');
            return redirect()->route('dashboard');
        }
        Toastr::error('Failed', 'Your password not match!');
        return back();
    }
}
