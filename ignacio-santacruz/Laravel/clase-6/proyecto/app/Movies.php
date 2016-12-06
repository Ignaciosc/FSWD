<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Movies extends Model
{
    protected $table = 'movies';
    public function actors() {
            return $this->belongsToMany(Actors::class);
        }
}
