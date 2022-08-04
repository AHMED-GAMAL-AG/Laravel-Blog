<?php


namespace Database\Seeders;


// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::truncate(); // delete all users
        Post::truncate(); // delete all posts
        Category::truncate(); // delete all categories
        // to prevent duplication and errors in the database, we need to truncate the tables first

        $user = User::factory()->create();

        $personal = Category::create([
            'name' => 'personal',
            'slug' => 'personal',
        ]);

        $family = Category::create([
            'name' => 'family',
            'slug' => 'family',
        ]);

        $work = Category::create([
            'name' => 'work',
            'slug' => 'work',
        ]);

        Post::create([
            'user_id' => $user->id,
            'category_id' => $personal->id,
            'title' => 'my personal post',
            'slug' => 'my-personal-post',
            'body' => '<p>This is the body of the personal post </p>',
            'excerpt' => '<p> This is the excerpt of the personal post </p>',
        ]);

        Post::create([
            'user_id' => $user->id,
            'category_id' => $work->id,
            'title' => 'my work post',
            'slug' => 'my-work-post',
            'body' => '<p>This is the body of the work post </p>',
            'excerpt' => '<p> This is the excerpt of the work post </p>',
        ]);
    }
}
