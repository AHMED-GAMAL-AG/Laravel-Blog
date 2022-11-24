<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule as ValidationRule;
use Symfony\Component\HttpFoundation\Response;

class PostController extends Controller
{

    public function index()
    {
        return view('posts.index', [
            "posts" => Post::latest()->filter(request(['search', 'category' ,'author' ]))->paginate(6)->withQueryString() , // write with('category' , 'author') to solve n+1 problem // Add all current query string values to the paginator
        ]); // posts.blade.php is the view just write posts
    }

    public function show(Post $post)
    {
        return view(
            "posts.show",
            [
                "post" => $post, //pass the object to the view
            ]
        );
    }

    public function create()
    {

        return view("posts.create");
    }


    public function store()
    {
        $attributes = request()->validate([
            'title' => 'required',
            'slug' => ['required' , ValidationRule::unique('posts', 'slug')], // this has to be unique in the posts table on the slug column
            'excerpt' => 'required',
            'body' => 'required',
            'category_id' => ['required' , ValidationRule::exists('categories','id')] // make sure that this id exists in the categories table
        ]);

        $attributes['user_id'] = auth()->id();

        Post::create($attributes);

        return redirect('/');
    }
}
