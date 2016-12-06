<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Actors extends Model
{
    public function movies() {
        return $this->belongsToMany(Movies::class);
    }
}
