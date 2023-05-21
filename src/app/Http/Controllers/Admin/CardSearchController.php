<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class CardSearchController extends Controller
{
    //
    public function test()
    {
        $users = User::all();
        return view('test', compact('users'));
    }
}
