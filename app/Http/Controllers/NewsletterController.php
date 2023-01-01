<?php

namespace App\Http\Controllers;

use App\Services\MailchimpNewsletter;
use App\Services\Newsletter;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class NewsletterController extends Controller
{
    // Newsletter is the interface use any service that implements the interface convertkit, mailchimp, etc
    public function __invoke(Newsletter $newsletter) // injecte newsletter service // laravel will fetch the newsletter from the app service provider and resolve it here for me $newsletter
    {
        request()->validate(['email' => 'required|email',]);

        try {
            $newsletter->subscribe(request('email'));
        } catch (\Exception $e) {

            throw ValidationException::withMessages([
                'email' => 'This email could not be added to our newsletter list'
            ]);
        }

        return redirect('/')->with('success', 'You are now signed up for our nwesletter!');
    }
}
