<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    //protected $fillable = ['title', 'body' , 'excerpt' ,'slug' , 'published_at' , 'category_id'];
    protected $guarded = [];

    protected $with = ['category', 'author']; // eager loading each post with its category and author

    public function scopeFilter($query, array $filters) // Post::newQuery()->scopeFilter() instead do  Post::newQuery()->Filter() //first argument is passed by laravel automatically which is query builder
    {
        //search is name in the search form //by default it is false ?? safe is null operator to hande if their is nothing to search for

        $query->when($filters['search'] ?? false, function ($query, $search) {
            $query
                ->where('title', 'like', '%' . $search . '%') // sql syntax
                ->orwhere('body', 'like', '%' . $search . '%');
        });

        // if ($filters['search'] ?? false ) //search is name in the search form //by default it is false ?? safe is null operator to hande if their is nothing to search for
        // {
        //     $query
        //         ->where('title', 'like', '%' . request('search') . '%') // sql syntax
        //         ->orwhere('body', 'like', '%' . request('search') . '%');
        // }

    }

    public function category()
    {
        return $this->belongsTo(Category::class); //post belongs to category
    }

    public function author() // the forgien key is author_id so i have to overide ir
    {
        return $this->belongsTo(User::class, 'user_id'); //post belongs to user
    }
}
