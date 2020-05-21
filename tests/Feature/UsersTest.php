<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class UsersTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testExample()
    {
        $users = factory(\App\Users::class, 500)->create();
        $users_acess = factory(\App\Users_acess::class, 5000)->create();
        $this->assertTrue(true);
    }
}
