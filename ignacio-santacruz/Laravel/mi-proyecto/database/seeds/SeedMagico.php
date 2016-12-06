<?php

use Illuminate\Database\Seeder;

class SeedMagico extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Pelicula::class, 50)->create();
    }
}
