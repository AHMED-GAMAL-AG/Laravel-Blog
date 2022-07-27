<?php

use App\Models\Post;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Route;
use Spatie\YamlFrontMatter\YamlFrontMatter;

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
    "/posts/{slug_name}",
    function ($slug) {

        // find a post by its slug and pass it to view called "post"
        return view(
            "post",
            [
                "post" => Post::find($slug)
            ]
        );
    }
)->where("slug_name", "[A-z_\-]+"); // regex for slug name capital and small letters, underscore and dash + is for one or more characters
