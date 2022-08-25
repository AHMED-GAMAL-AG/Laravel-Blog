<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SessionsController extends Controller
{
    public function destroy()
    {
        auth()->logout();

        return redirect('/')->with('success', 'Good Bye!');  //  equivlant to session()->flash('success', 'Your account has been created.' ); // 'success' is the session key
    }
}
