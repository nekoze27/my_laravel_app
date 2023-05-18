<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CardSearchController extends Controller
{
    //
    pubric function add()
    {
        return view('admin.card_search.create')
    }
}
