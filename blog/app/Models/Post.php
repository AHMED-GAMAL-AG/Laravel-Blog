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

        $query->when($filters['search'] ?? false, function ($query, $search) {  // search is what user requested in browser
            $query->where(fn($query) =>
                $query->where('title', 'like', '%' . $search . '%') // sql syntax
                ->orwhere('body', 'like', '%' . $search . '%')
        );
        });

        $query->when($filters['category'] ?? false, function ($query, $category) { //category is what user requested in browser

            $query->whereHas(
                'category',
                fn ($query) =>
                $query->where('slug', $category)
            );

            // $query
            //     ->whereExists(
            //         fn ($query) =>
            //         $query->from('categories')
            //             ->whereColumn('categories.id', 'posts.category_id') // where they match each other
            //             ->where('categories.slug', $category)
            //     );
        });

        $query->when($filters['author'] ?? false, function ($query, $author) { //category is what user requested in browser
            $query->whereHas(
                'author',
                fn ($query) =>
                $query->where('username', $author)
            );
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
