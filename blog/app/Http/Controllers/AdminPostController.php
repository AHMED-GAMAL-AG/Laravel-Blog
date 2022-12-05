<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule as ValidationRule;

class AdminPostController extends Controller
{
    public function index()
    {
        return view('admin.posts.index', [ // show addmin page and pass all the posts to it
            'posts' => Post::paginate(50)
        ]);
    }


    public function create()
    {

        return view("admin.posts.create");
    }


    public function store()
    {
        $attributes = request()->validate([
            'title' => 'required',
            'thumbnail' => 'required|image',
            'slug' => ['required', ValidationRule::unique('posts', 'slug')], // this has to be unique in the posts table on the slug column
            'excerpt' => 'required',
            'body' => 'required',
            'category_id' => ['required', ValidationRule::exists('categories', 'id')] // make sure that this id exists in the categories table
        ]);

        // add this attribute to the attributes array after validation
        $attributes['user_id'] = auth()->id();
        $attributes['thumbnail'] = request()->file('thumbnail')->store('thumbnails'); // store the file in the thumbnails folder and return the path to the file and the storage/public is linked to the public folder by using the php artisan storage:link command

        Post::create($attributes);

        return redirect('/');
    }

    public function edit(Post $post)
    {
        return view('admin.posts.edit', [ // show the edit page and pass the post that is associated with the url
            'post' => $post
        ]);
    }

    public function update(Post $post)
    {
        $attributes = request()->validate([
            'title' => 'required',
            'thumbnail' => 'image',
            'slug' => ['required', ValidationRule::unique('posts', 'slug')->ignore($post->id)], // this is already a post in the database so ignore it
            'excerpt' => 'required',
            'body' => 'required',
            'category_id' => ['required', ValidationRule::exists('categories', 'id')] // make sure that this id exists in the categories table
        ]);

        if(isset($attributes['thumbnail'])) {
            $attributes['thumbnail'] = request()->file('thumbnail')->store('thumbnails'); // store the file in the thumbnails folder and return the path to the file and the storage/public is linked to the public folder by using the php artisan storage:link command
        }

        $post->update($attributes);
        return back()->with('success', 'Post Updated!');
    }

    public function destroy(Post $post)
    {
        $post->delete();
        return back()->with('success', 'Post Deleted!');
    }


}
