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
        // $attributes = $this->validatePost(); // i extract the validation to a function to make it reusable
        // $attributes['user_id'] = auth()->id(); // add this attribute to the attributes array after validation
        // $attributes['thumbnail'] = request()->file('thumbnail')->store('thumbnails'); // store the file in the thumbnails folder and return the path to the file and the storage/public is linked to the public folder by using the php artisan storage:link command
        // Post::create($attributes);

        // same as above
        Post::create(array_merge($this->validatePost(), [
            'user_id' => auth()->id(),
            'thumbnail' => request()->file('thumbnail')->store('thumbnails')
        ]));

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
        $attributes = $this->validatePost(); // i extract the validation to a function to make it reusable

        // same as if($attributes['thumbnail'] ?? false) // means check for a thumbnail but asume we dont have one
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


    protected function validatepost(?Post $post = null): array // null can be passed to this method you dont have to give it a post if you dont want to
    {
        $post = $post ?? new Post(); // if you gave a post it will use it other wise it will use that new post
        return request()->validate([
            'title' => 'required',
            'thumbnail' => $post->exists ? ['image'] : ['required','image'], // if the post exists then the thumbnail is optional but if it doesnt exist then it is required
            'slug' => ['required', ValidationRule::unique('posts', 'slug')->ignore($post)], //this has to be unique in the posts table on the slug column for when iam creating a new post the ->ignore($post) part iam creating a new post thier is no id aim not ignoring any thing BUT if this is already a post in the database ignore it $post same as $post->id it automatically gets the id
            'excerpt' => 'required',
            'body' => 'required',
            'category_id' => ['required', ValidationRule::exists('categories', 'id')], // make sure that this id exists in the categories table
            'puplished_at' => 'required',
        ]);
    }

}
