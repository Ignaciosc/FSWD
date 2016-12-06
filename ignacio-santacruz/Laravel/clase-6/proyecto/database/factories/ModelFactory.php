<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\Movies::class, function (Faker\Generator $faker) {

    return [
        'title' => $faker->realText(35),
        'genre_id' => $faker->randomDigit,
        'rating' => $faker->RandomFloat(1,0,10),
        'released_at' => $faker->date,
        'earnings' => $faker->numberBetween($min = 1000, $max = 9000),
    ];
});
