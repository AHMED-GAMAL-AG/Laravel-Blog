<?php

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
    return view('posts');
});

Route::get(
    "/posts/{slug_name}",
    function ($slug) {

        if (!file_exists($path = __DIR__ . "/../resources/posts/{$slug}.html")) {
            return redirect("/"); //return home page
            // abort(404);
        }

        $post = cache()->remember("post.{slug_name}", 1200, fn () => file_get_contents($path)); // cache for 20 minutes 1200 sec

        //$post =  file_get_contents(__DIR__ . "/../resources/posts/{$slug}.html");

        return view("post", [
            "post" => $post
        ]);
    }
)->where("slug_name", "[A-z_\-]+"); // regex for slug name capital and small letters, underscore and dash + is for one or more characters
