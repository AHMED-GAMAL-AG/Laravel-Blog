<?php

use App\Http\Controllers\AdminPostController;
use App\Http\Controllers\NewsletterController;
use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use App\Services\Newsletter;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionsController;
use Illuminate\validation\ValidationException;
use App\Http\Controllers\PostCommentsController;

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

// index, create, store, show, edit, update, destroy try to stick to the convention of the name of the controller and the name of the function

// "/" , "/posts/{post:slug}" , "/posts/{post:slug}/comments" , "/register" , "/login" , "/logout" are used when you want to access the route from the browser ex. <a href="/login">


Route::post('newsletter', NewsletterController::class); // single action controller i dont need ti give it an action


Route::get('/', [PostController::class, 'index'])->name('home');

Route::get("/posts/{post:slug}", [PostController::class, 'show']); // hase to match the wildcard name in the route //Post::where('slug', $post)->findOrFail()

Route::get('register', [RegisterController::class, 'create'])->middleware('guest'); // only a guest that is not loged in can access this route app/http/middleware/kernel.php thier you will find all the function attributes if you tried access the route it will redirect to '/home' but i changed to to '/' in RouteServiceProvider.php

Route::post('posts/{post:slug}/comments', [PostCommentsController::class, 'store']);

Route::post('register', [RegisterController::class, 'store'])->middleware('guest'); // only a guest that is not loged in can access this route app/http/middleware/kernel.php thier you will find all the function attributes if you tried access the route it will redirect to '/home' but i changed to to '/' in RouteServiceProvider.php

Route::get('login', [SessionsController::class, 'create'])->middleware('guest'); // a user is already loged in he dont neet to access the log in page

Route::post('login', [SessionsController::class, 'store'])->middleware('guest'); // a user is already loged in he dont neet to access the log in page


Route::post('logout', [SessionsController::class, 'destroy'])->middleware('auth'); // you have to be authenticated to reach this end point

Route::middleware('can:admin')->group(function () { // group the routes with the same middleware instead of writing it for every route
    // admin routes // i created a custom blade directive to check if the user is admin or not in AppServiceProvider.php 'admin' i can refrece it as a meddleware in the routes as laravel ships with a middleware called 'can' in the kernel.php used for authorization can:then the ability name

    Route::resource('admin/posts', AdminPostController::class)->except('show'); // the show end point is refrerenced ->except('show') i dont need it you will see it if you run php artisan route:list
    // Route::get('admin/posts/create', [AdminPostController::class, 'create']); // for the admin to create a post
    // Route::post('admin/posts', [AdminPostController::class, 'store']);
    // Route::get('admin/posts', [AdminPostController::class, 'index']);  // for the admin to see all the posts
    // Route::get('admin/posts/{post}/edit', [AdminPostController::class, 'edit']);
    // Route::patch('admin/posts/{post}', [AdminPostController::class, 'update']);
    // Route::delete('admin/posts/{post}', [AdminPostController::class, 'destroy']);
});




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

//(route name , function name inside the class)
