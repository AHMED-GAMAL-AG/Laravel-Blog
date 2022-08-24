@props(['posts'])

<x-post-featured-card :post="$posts[0]" /> {{-- : to pass variable  $posts is database collection --}}
{{-- @props(['post']) the :post=  comes from the post-featured-card.blade.php file --}}

@if ($posts->count() > 1)
    <div class="lg:grid lg:grid-cols-6">
        @foreach ($posts->skip(1) as $post) {{-- skip(1) to skip the first post --}}
            <x-post-card :post="$post" class="{{ $loop->iteration < 3 ? 'col-span-3' : 'col-span-2' }}" />
        @endforeach
    </div>
@endif {{-- dont render that grid until posts > 1 --}}
