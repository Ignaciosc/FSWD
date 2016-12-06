<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PeliculasController extends Controller
{
    public function listado() {
        return view('pelicula', [
            'peliculas' => ['Star Wars', 'Lord of the Rings', 'The Exorcist'],
            'actores' => ['Ryan Reynolds', '<h2>Nicholas Cage</h2>'],
        ]);
    }
    public function ver($id) {
        return "Una pelicula: $id";
    }
    public function prueba(Request $request) {
        //NO VA MAS
        //return $_POST['nombre'];

        return "El pedido fue: " . $request->input('nombre');
    }
};
