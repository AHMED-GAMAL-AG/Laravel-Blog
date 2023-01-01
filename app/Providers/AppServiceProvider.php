<?php

namespace App\Providers;

use App\Services\MailchimpNewsletter;
use App\Services\Newsletter;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;
use MailchimpMarketing\ApiClient;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register() // here we register things into the service container
    {

        app()->bind(Newsletter::class, function () { // bind the interface to the service it is an abstract key not a specific service
            $client = new ApiClient();

            $client->setConfig([
                'apiKey' => config('services.mailchimp.key'),
                'server' => 'us21'
            ]);
            return new MailchimpNewsletter($client); // return here any service that implements the interface mailchimp, convertkit, etc
        }); // this is how you register a service into the service container // this is our toy in the toy chest

    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //Model::unguard(); // this is to disable mass assignment protection

        // a gate that allow some users in and some out
        Gate::define('admin', function ($user) { // if the currntlly signed in user that is passed automatically will satisfy this condtion (admin or not)
            return $user->username === 'ahmed gamal'; // the user will be grabed automatically by laravel i dont need to use this auth()->user()?->username !== 'ahmed gamal'
        });

        Blade::if('admin', function () { // a custom blade directive to check if the user is admin or not
            return request()->user()?->can('admin'); // \ ? make the user optional to avoid exception if the user is not signed in
        });
    }
}
