<x-layout>
    @foreach ($posts as $post)
        <article>
            <h1>
                <a href="posts/{{ $post->slug }}">

                    {{ $post->title }} {{-- equavilant to <?php echo $post->title; ?> --}}
                </a>
            </h1>

            <div>
                {!! $post->body !!} {{-- <?php echo $post->body; ?> --}}
            </div>
        </article>
        @endforeach
</x-layout>
