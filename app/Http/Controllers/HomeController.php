<?php

namespace App\Http\Controllers;

use App\Menu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    //
    public function index()
    {
        return view('index');
    }

    public function contact(Request $request)
    {
        return response()->json(['message' => 'Mensagem enviada com sucesso!']);
    }
}
