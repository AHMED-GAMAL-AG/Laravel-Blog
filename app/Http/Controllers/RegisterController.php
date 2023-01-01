<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function create()
    {
        return view('register.create');
    }

    public function store()
    {

        $attributes = request()->validate([
            'name' => 'required|max:255', // required and max 255 chars validation rule from laravel docs
            'username' => 'required|min:3|max:255|unique:users,username', //unique:table,column' look in the data base in this table and colomn check if it is uniqe exist or not
            'email' => 'required|email|max:255|unique:users,email',
            'password' => 'required|min:7|max:255',
            'gender' => 'required',
        ]);
        // if validation fails laravel will redirect back to the form with the errors
        $user = User::create($attributes);

        auth()->login($user); // helper function to login the user

        return redirect('/')->with('success', 'Your account has been created.'); //  equivlant to session()->flash('success', 'Your account has been created.' ); // 'success' is the session key

    }
}
