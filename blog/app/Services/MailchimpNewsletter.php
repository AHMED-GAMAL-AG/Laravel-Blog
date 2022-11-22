<?php

namespace App\Services;

use MailchimpMarketing\ApiClient;

class MailchimpNewsletter implements Newsletter
{

    public function __construct(protected Apiclient $client)
    {
        //
    }

    public function subscribe(string $email , $list=null) // $list=null is optional not required
    {

    $list ??= config('services.mailchimp.lists.subscribers'); // if $list is null then use the default list from the config file



        return $this->client->lists->addlistMember($list, [
            'email_address' => $email,
            'status' => 'subscribed'
        ]);
    }
}
