<?php

use App\Http\Controllers\PostController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionsController;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;
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


// Route::get('categories/{category:slug}', function (Category $category) {
//     return view(
//         "posts",
//         [
//             'posts' => $category->posts, // show all posts associated with the category
//             'currentCategory' => $category,
//             "categories" => Category::all(),
//         ]
//     );
// })->name('category');

// Route::get('authors/{author:username}', function (User $author) {

//     return view(
//         "posts.index",
//         [
//             'posts' => $author->posts, // view all posts by the author
//         ]
//     );
// });


Route::get('/', [PostController::class, 'index'])->name('home');

Route::get("/posts/{post:slug}", [PostController::class, 'show']); // hase to match the wildcard name in the route //Post::where('slug', $post)->findOrFail()

Route::get('register', [RegisterController::class, 'create'])->middleware('guest'); // only a guest that is not loged in can access this route app/http/middleware/kernel.php thier you will find all the function attributes if you tried access the route it will redirect to '/home' but i changed to to '/' in RouteServiceProvider.php

Route::post('register', [RegisterController::class, 'store'])->middleware('guest'); // only a guest that is not loged in can access this route app/http/middleware/kernel.php thier you will find all the function attributes if you tried access the route it will redirect to '/home' but i changed to to '/' in RouteServiceProvider.php

Route::post('logout' , [SessionsController::class, 'destroy']);
