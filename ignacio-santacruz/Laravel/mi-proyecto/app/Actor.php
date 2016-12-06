<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Actor extends Model
{
    public function getNombreCompleto() {
        return view('actores.blade.php')
    }
}
