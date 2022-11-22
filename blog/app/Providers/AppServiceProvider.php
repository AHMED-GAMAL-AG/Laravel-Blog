<?php

namespace App\Providers;

use App\Services\MailchimpNewsletter;
use App\Services\Newsletter;
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
        //
    }
}
