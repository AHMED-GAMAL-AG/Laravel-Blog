@props(['comment', 'user'])
<x-panel class="bg-gray-50">
    <article class="flex  space-x-4">


        <div class="flex-shrink-0">
            @if ($comment->author->gender == 'male')
                {{-- <img src="https://avatars.dicebear.com/api/adventurer/{{ $comment->user_id}}.svg" alt="" width="60" height="60" class="rounded-xl"> --}}
                <img src="https://joeschmoe.io/api/v1/male/{{ $comment->user_id}}" alt="" width="60" height="60" class="rounded-xl"> {{--  public function author()  the forgien key is author_id so i have to overide it  type $comment->author->gender insted of $comment->user_id->gender same as function name--}}
            @elseif ($comment->author->gender == 'female')
                <img src="https://joeschmoe.io/api/v1/female/{{ $comment->user_id}}" alt="" width="60"
                    height="60" class="rounded-xl">
            @endif
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
