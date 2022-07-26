<?php

namespace App\Models;

use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\File;

class Post
{
    public static function find($slug)
    {

        if (!file_exists($path = resource_path("posts/{$slug}.html"))) {
            throw new ModelNotFoundException();
        }
        return cache()->remember("posts.{slug}", 1200, fn () => file_get_contents($path)); // cache for 20 minutes 1200 sec
    }

    public static function all()
    {
        $files = File::files(resource_path("posts/")); //read a diractory of files

        return array_map(fn ($file) =>$file->getContents(),  $files); //loop over $files and path to fn
    }
}
