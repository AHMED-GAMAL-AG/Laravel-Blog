<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    //protected $fillable = ['title', 'body' , 'excerpt' ,'slug' , 'published_at' , 'category_id'];
    protected $guarded = [];

    protected $with = ['category' , 'author' ]; // eager loading each post with its category and author

    public function category()
    {
        return $this->belongsTo(Category::class); //post belongs to category
    }

    public function author() // the forgien key is author_id so i have to overide ir
    {
        return $this->belongsTo(User::class , 'user_id' ); //post belongs to user
    }
}
