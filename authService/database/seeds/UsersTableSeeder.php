<?php

use Illuminate\Database\Seeder;
use App\User;
use Illuminate\Support\Facades\Hash;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run ()
    {

        $faker = \Faker\Factory::create();
        $password = Hash::make('admin');
        for ($i = 0; $i < 10; $i++) {
            $user = new User();
            $user->name =$faker->name;
            $user->surname = $faker->lastName;
            $user->email = $faker->email;
            $user->password = $password;
            $user->timestamps;
            $user->save();
        }
    }
}