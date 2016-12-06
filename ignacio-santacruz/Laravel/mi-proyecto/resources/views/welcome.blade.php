@extends('layouts.app')

@section('contenido')
<div class="flex-center position-ref full-height">
    @if (Route::has('login'))
        <div class="top-right links">
            <a href="{{ url('/login') }}">Login</a>
            <a href="{{ url('/register') }}">Register</a>
        </div>
    @endif

    <div class="content">
        <div class="title m-b-md">
            Aguante Atom
        </div>

        <div class="links">
            <a href="https://atom.io/">Dale click bebote!</a>
            <a href="https://laracasts.com">Atom Rulz</a>
            <a href="https://laravel-news.com">Atom</a>
            <a href="https://forge.laravel.com">Atom para toda la vida</a>
            <a href="https://github.com/laravel/laravel">Programa con Atom</a>
        </div>

        <form method="post" action="/prueba-post">
            {{ csrf_field() }}
            <input type="text" name="nombre">
            <button type="submit">Boton</button>
        </form>

        <br>
        <br>
        <br>
        <br>
        <br>
        <div>
            Made with PHP Storm
        </div>
    </div>
</div>
@endsection