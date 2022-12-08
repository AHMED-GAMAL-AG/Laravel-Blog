@props(['comment', 'user'])
<x-panel class="bg-gray-50">
    <article class="flex  space-x-4">


        <div class="flex-shrink-0">

            {{-- auth()->user()->name only use it when you are shure the user is signed in it makes object of the current user other wise it will return null --}}

            <img src="https://avatars.dicebear.com/api/bottts/{{ ($comment->user_id)+3 }}.svg" alt="" width="60" height="60" class="rounded-full">
            {{-- <img src="https://joeschmoe.io/api/v1/{{ auth()->user()->gender }}/{{ auth()->id() }}" alt="" width="60" height="60" class="rounded-full"> --}}


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
