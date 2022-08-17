<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{

    public function index()
    {
        return view('posts', [
            "posts" => Post::latest()->filter(request(['search' , 'category']))->get(), // write with('category' , 'author') to solve n+1 problem
            "categories" => Category::all(),
            'currentCategory' => Category::firstWhere('slug', request('category')),
        ]); // posts.blade.php is the view just write posts
    }

    public function show(Post $post)
    {
        return view(
            "post",
            [
                "post" => $post
            ]
        );
    }
}
