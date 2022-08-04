<x-layout>
    @foreach ($posts as $post)
        <article>
            <h1>
                <a href="posts/{{ $post->slug }}">

                    {{-- equavilant to <?php echo $post->title; ?> --}}
                    {{-- {{ $post->title }} --}} {{-- use if you dont want to send html to browser for security --}}
                    {!! $post->title !!} {{-- use if you want to send html to browser only use if you have control on it --}}
                </a>
            </h1>

            <p>
                <a href="categories/{{ $post->category->slug }}">{{ $post->category->name }}</a>
            </p>

            <div>
                {!! $post->excerpt !!} {{-- <?php echo $post->body; ?> --}}
            </div>
        </article>
    @endforeach
</x-layout>
