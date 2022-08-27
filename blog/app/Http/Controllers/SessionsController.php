<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class SessionsController extends Controller
{

    public function create()
    {
        return view('sessions.create');
    }

    public function store()
    {
        //validate the request
        $attributes =  request()->validate([
            //'email' => 'required|exists:users,email', //check if the email exists in the users table and it matches the email in the request it is the inverse of the unique rule
            'email' => 'required|email', //check if the email exists in the users table and it matches the email in the request it is the inverse of the unique rule
            'password' => 'required'
        ]);

        //attempt to authenticate and log in the user
        if (auth()->attempt($attributes)) {
            session()->regenerate(); // regenerate the session id to prevent session fixation attacks
            //redirect with a success flash message
            return redirect('/')->with('success', 'Welcom Back!');
        }

        // auth faild pro way
        throw ValidationException::withMessages([
            'email' => 'Your Provided credentials could not be verified.']
        );



        // auth failed
        // return back() //$errors is a variable that is available in the view
        //     ->withInput() //put the input back in the form
        //     ->withErrors(['email' => 'Your Provided credentials could not be verified.']);
    }


    public function destroy()
    {
        auth()->logout();

        return redirect('/')->with('success', 'Good Bye!');  //  equivlant to session()->flash('success', 'Your account has been created.' ); // 'success' is the session key
    }
}
