<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Util\BkashCredential;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Order;
use App\Models\Payment;
use App\Models\PaymentGateway;
use Session;
use Toastr;
use Cart;
use Illuminate\Support\Str;

class BkashController extends Controller
{
    private $base_url;
    private $app_key;
    private $app_secret;
    private $username;
    private $password;

    public function __construct()
    {
        $bkash_gateway = PaymentGateway::where(['status'=> 1, 'type'=>'bkash'])->first();
        if($bkash_gateway) {
            $this->base_url = $bkash_gateway->base_url;
            $this->app_key = $bkash_gateway->app_key; // bKash Merchant API APP KEY
            $this->app_secret = $bkash_gateway->app_secret; // bKash Merchant API APP SECRET
            $this->username = $bkash_gateway->username; // bKash Merchant API USERNAME
            $this->password = $bkash_gateway->password; // bKash Merchant API PASSWORD
        } else {
            $this->base_url = 'https://tokenized.pay.bka.sh/v1.2.0-beta';
            $this->app_key = ''; // bKash Merchant API APP KEY
            $this->app_secret = ''; // bKash Merchant API APP SECRET
            $this->username = ''; // bKash Merchant API USERNAME
            $this->password = ''; // bKash Merchant API PASSWORD
        }
    }


    public function authHeaders(){
        return array(
            'Content-Type:application/json',
            'Authorization:' . $this->grant(),
            'X-APP-Key:'.$this->app_key
        );
    }
         
    public function curlWithBody($url,$header,$method,$body_data_json){
        $curl = curl_init($this->base_url.$url);
        curl_setopt($curl,CURLOPT_HTTPHEADER, $header);
        curl_setopt($curl,CURLOPT_CUSTOMREQUEST, $method);
        curl_setopt($curl,CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl,CURLOPT_POSTFIELDS, $body_data_json);
        curl_setopt($curl,CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($curl, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);
        $response = curl_exec($curl);
        curl_close($curl);
        return $response;
    }

    public function grant()
    {
        $header = array(
                'Content-Type:application/json',
                'username:'.$this->username,
                'password:'.$this->password
                );
        $header_data_json=json_encode($header);

        $body_data = array('app_key'=> $this->app_key, 'app_secret'=>$this->app_secret);
        $body_data_json=json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/token/grant',$header,'POST',$body_data_json);
        
        $token = json_decode($response)->id_token;

        return $token;
    }

    public function create(Request $request)
    {     
        $order_info = Order::where('id',$request->order_id)->first();
        $amount = $order_info->amount;
        $orderId = $request->order_id;
        
        $header =$this->authHeaders();
        $body_data = array(
            'mode' => '0011',
            'payerReference' => ' ',
            'callbackURL' => 'https://ecom.websolutionit.com/bkash/checkout-url/callback?orderId='.$orderId,
            'amount' => $amount,
            'currency' => 'BDT',
            'intent' => 'sale',
            'merchantInvoiceNumber' => "Inv".Str::random(10)
        );
        $body_data_json=json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/create',$header,'POST',$body_data_json);
        
        //dd($response);
        
        Session::forget('paymentID');
        Session::put('paymentID', json_decode($response)->paymentID);
        
        return redirect((json_decode($response)->bkashURL));
        
    }

    public function execute($paymentID)
    {

        $header =$this->authHeaders();

        $body_data = array(
            'paymentID' => $paymentID
        );
        $body_data_json=json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/execute',$header,'POST',$body_data_json);
        
        return $response;
    }

    public function query($paymentID)
    {
        $header =$this->authHeaders();

        $body_data = array(
            'paymentID' => $paymentID,
        );
        $body_data_json=json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/payment/status',$header,'POST',$body_data_json);
        return $response;
    }

    public function callback(Request $request)
    {
        $allRequest = $request->all();
        //return $allRequest;
        
        if(isset($allRequest['status']) && $allRequest['status'] == 'failure'){
            Toastr::error('Opps, Your bkash payment failed', 'Failed!');
            return redirect('customer/order-success/'.$allRequest['orderId']);
        }else if(isset($allRequest['status']) && $allRequest['status'] == 'cancel'){
            Toastr::error('Opps, Your bkash payment cancelld', 'Cancelled!');
            return redirect('customer/order-success/'.$allRequest['orderId']);
        }else{
            
            $response = $this->execute($allRequest['paymentID']);
            $arr = json_decode($response,true);
            if(array_key_exists("statusCode",$arr) && $arr['statusCode'] != '0000'){
                Toastr::error('Opps, Your bkash payment failed', 'Failed!');
                return redirect('customer/order-success/'.$allRequest['orderId']);
            }else if(array_key_exists("message",$arr)){
                sleep(1);
                $queryResponse = $this->query($allRequest['paymentID']);
                return redirect('customer/order-success/'.$allRequest['orderId']);
            }
            
            $queryResponse = $this->query($allRequest['paymentID']);
            
            $order = Order::where('id',$allRequest['orderId'])->first();
            $order->status = 'accepted';
            $order->save();
            
            $payment = Payment::where('order_id',$allRequest['orderId'])->first();
            $payment->trx_id = $allRequest['paymentID'];
            $payment->payment_status = 'paid';
            $payment->save();
            
            Toastr::success('Thanks, Your bkash payment successfully done', 'Success!');
            return redirect('customer/order-success/'.$allRequest['orderId']);
        }
    }
 
    public function getRefund(Request $request)
    {
        return view('CheckoutURL.refund');
    }

    public function refund(Request $request)
    {

        $header =$this->authHeaders();

        $body_data = array(
            'paymentID' => $request->paymentID,
            'amount' =>  $request->amount,
            'trxID' => $request->trxID,
            'sku' => 'sku',
            'reason' => 'Quality issue'
        );
     
        $body_data_json=json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/payment/refund',$header,'POST',$body_data_json);
        // your database operation
        return view('CheckoutURL.refund')->with([
            'response' => $response,
        ]);
    }

    
    public function getRefundStatus(Request $request)
    {
        return view('CheckoutURL.refund-status');
    }

    public function refundStatus(Request $request)
    {     
        Session::forget('bkash_token');  
        $token = $this->grant();
        Session::put('bkash_token', $token);

        $header =$this->authHeaders();

        $body_data = array(
            'paymentID' => $request->paymentID,
            'trxID' => $request->trxID,
        );
        $body_data_json = json_encode($body_data);

        $response = $this->curlWithBody('/tokenized/checkout/payment/refund',$header,'POST',$body_data_json);
                
        return view('CheckoutURL.refund-status')->with([
            'response' => $response,
        ]);
    }
    
}
