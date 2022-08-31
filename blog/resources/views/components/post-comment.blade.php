@props(['comment'])
<x-panel class="bg-gray-50">
    <article class="flex  space-x-4">

        <div class="flex-shrink-0">
            <img src="https://avatars.dicebear.com/api/adventurer/{{ $comment->user_id}}.svg" alt="" width="60" height="60" class="rounded-xl">
        </div>

        <div>
            <header class="mb-4">
                <h3 class="font-bold">{{ $comment->author->username }}</h3>

                <p class="text-xs">
                    Posted
                    <time>{{ $comment->created_at->format('F j, Y, g:i a') }}</time> {{-- format('F j, Y, g:i a') March 10, 2001, 5:16 pm --}}
                </p>

            </header>

            <p>
                {{ $comment->body }}
            </p>
        </div>

    </article>
</x-panel>
