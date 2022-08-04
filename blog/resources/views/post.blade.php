<x-layout>

    <article>
        {{-- <h1> <?php echo $post->title; ?> </h1> --}}
        <h1>
            {{-- {{ $post->title }} --}} {{-- use if you dont want to send html to browser for security --}}
            {!! $post->title !!} {{-- use if you want to send html to browser only use if you have control on it --}}

        </h1>

        <p>
            <a href="authors/{{ $post->author->username  }}">{{ $post->author->name }}</a> in <a href="categories/{{ $post->category->slug }}">{{ $post->category->name }}</a>
        </p>
        <div>
            {!! $post->body !!} {{-- eqavilant to <?php echo $post->body; ?> --}}
        </div>
    </article>

    <a href="/">Go back</a>

</x-layout>
