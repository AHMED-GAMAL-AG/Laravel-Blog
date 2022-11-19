<?php

namespace App\Services;

use MailchimpMarketing\ApiClient;

class Newsletter
{
    public function subscribe(string $email , $list=null) // $list=null is optional not required
    {

    $list ??= config('services.mailchimp.lists.subscribers'); // if $list is null then use the default list from the config file



        return $this->client()->lists->addlistMember($list, [
            'email_address' => $email,
            'status' => 'subscribed'
        ]);
    }

    protected function client()
    {
        return (new ApiClient())->setConfig([
            'apiKey' => config('services.mailchimp.key'),
            'server' => 'us21'
        ]);
    }
}
