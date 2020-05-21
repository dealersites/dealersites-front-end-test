<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Users;
use App\Users_acess;
use Faker\Generator as Faker;

$factory->define(Users_acess::class, function (Faker $faker) {
    return [
        //
        'last_login' => $faker->datetime(),
        'users_id' => $faker->numberBetween($min = 1, $max = 500)
    ];
});
