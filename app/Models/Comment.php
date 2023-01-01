<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;


    protected $guarded = [];

    public function post() //function name is important laravel will use post() to figure out the culmn name is post_id
    {
        return $this->belongsTo(Post::class); // comment belongs to post
    }

    public function author()  //function name is important laravel will use post() to figure out the forgein key name is author_id but it is not so i have to overide it (User::class, 'user_id');
    {
        return $this->belongsTo(User::class, 'user_id'); // comment belongs to user
    }
}
