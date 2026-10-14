<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetails extends Model
{
    use HasFactory;
    public function image()
    {
        return $this->belongsTo(Productimage::class, 'product_id', 'product_id')->select('id','product_id','image');
    }
    public function shipping(){
        return $this->belongsTo(Shipping::class, 'order_id','order_id')->select('id','order_id','name','phone','address');
    }
    public function order(){
        return $this->belongsTo(Order::class, 'order_id')->select('id','invoice_id');
    }
}
