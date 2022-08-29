<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->id();
            $table->foreignId('post_id')->constrained()->cascadeOnDelete(); //foreign key has to be unsigned as the id  of $table->id(); is unsigned it will never be negative
            $table->foreignId('user_id')->constrained()->cascadeOnDelete(); //foreign key has to be unsigned as the id  of $table->id(); is unsigned it will never be negative
            $table->text('body');
            $table->timestamps();

            //$table->foreign('post_id')->references('id')->on('posts')->cascadeOnDelete(); // cascadeOnDelete() will delete the comment if the post is deleted refrences the post id on the posts table
            //same as $table->unsignedBigInteger('post_id')->constrained()->cascadeOnDelete();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('comments');
    }
};
