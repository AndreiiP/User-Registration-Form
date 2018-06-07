<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
//        DB::table('users')->insert([
//            'name' => 'admin',
//            'email' => 'admin@gmail.com',
//            'password' => bcrypt('admin'),
//        ]);
        factory('App\Models\Member', 20)->create();
    }
}
