<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shipping extends Model
{
    use HasFactory;
    public function shipping_charge()
    {
        return $this->hasOne(ShippingCharge::class, 'id', 'area');
    }
}
