<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Productcolor extends Model
{
    use HasFactory;
    public function color(){
        return $this->hasOne('App\Models\Color', 'id', 'color_id');
    }
}
