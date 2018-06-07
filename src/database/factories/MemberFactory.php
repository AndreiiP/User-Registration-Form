<?php

use Faker\Generator as Faker;

$factory->define(App\Models\Member::class, function (Faker $faker) {
    return [
        'first_name' => $faker->firstName(),
        'last_name' => $faker->lastName(),
        'birth_date' => $faker->date($format = 'Y-m-d', $max = 'now'),
        'report_subject' => $faker->sentence($nbWords = 6, $variableNbWords = true),
        'country' => $faker->country(),
        'phone_country' => $faker->e164PhoneNumber(),
        'email' => $faker->unique()->safeEmail,
        'company' => $faker->company(),
        'position' => $faker->jobTitle(),
        'about_me' => $faker->paragraph(rand(1, 2)),
        'photo' => $faker->image('public/img',400,300, null, false)
    ];
});
