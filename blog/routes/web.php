<?php

use App\Models\Post;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {

    return view('posts', [
        "posts" => Post::all()
    ]); // posts.blade.php is the view just write posts
});

Route::get(
    "/posts/{post:slug}", // hase to match the wildcard name in the route
    function (Post $post) {  //Post::where('slug', $post)->findOrFail();
        return view(
            "post",
            [
                "post" => $post
            ]
        );
    }
);
