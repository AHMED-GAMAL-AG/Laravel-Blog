<?php

namespace App\Models;

use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\File;
use Spatie\YamlFrontMatter\YamlFrontMatter;

class Post
{
    public $title;
    public $date;
    public $excerpt;
    public $body;
    public $slug;

    public function __construct($title, $date, $excerpt, $body, $slug)
    {
        $this->title = $title;
        $this->date = $date;
        $this->excerpt = $excerpt;
        $this->body = $body;
        $this->slug = $slug;
    }

    public static function find($slug)
    {
        // for all the blog posts , find the one with the slug name that was requested
        return static::all()->firstWhere("slug", $slug);
    }

    public static function find_or_fail($slug)
    {
        // for all the blog posts , find the one with the slug name that was requested
        $post =  static::find($slug);

        if (!$post) {
            throw new ModelNotFoundException();
        }

        return $post;
    }

    public static function all()
    {
        return cache()->rememberForever("posts.all", function () {
            return collect(File::files(resource_path("posts"))) // get all files in the posts folder and put them in a collection
                ->map(
                    fn ($file) => YamlFrontMatter::parse(File::get($file)) // parse each file and put the result in a document
                ) //for each file in the loop push the file into the document variable

                ->map(
                    fn ($document) => new Post( // create a new post object from the document
                        $document->title,
                        $document->date,
                        $document->excerpt,
                        $document->body(),
                        $document->slug
                    )
                )->sortByDesc("date"); // sort the posts by date
        });



        //same approach as above
        //         $files = File::files(resource_path("posts")); // get all files in the posts folder and put them in an array
        //         return array_map(function ($file) {
        //     $document = YamlFrontMatter::parseFile($file); //for each file in the loop push the file into the document variable

        //     return new Post( //create a new post object and pass the document data into the constructor
        //         $document->title,
        //         $document->date,
        //         $document->excerpt,
        //         $document->body(),
        //         $document->slug
        //     );
        // }, $files); //loop over $files and path to fn
    }
}
