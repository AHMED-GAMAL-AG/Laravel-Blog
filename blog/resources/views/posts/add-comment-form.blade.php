@auth {{-- onlt show comment text area if user is loged in --}}
    <x-panel>
        <form method="POST" action="/posts/{{ $post->slug }}/comments">
            @csrf

            <header class="flex items-center">
                {{-- auth()->user()->name only use it when you are shure the user is signed in it makes object of the current user other wise it will return null --}}

                <img src="https://avatars.dicebear.com/api/bottts/{{ (auth()->id())+3 }}.svg" alt="" width="40" height="40" class="rounded-full">
                {{-- <img src="https://joeschmoe.io/api/v1/{{ auth()->user()->gender }}/{{ auth()->id() }}" alt="" width="40" height="40" class="rounded-full"> --}}
                <h2 class="ml-4">Want to participate?</h2>
            </header>

            <div class="mt-6">
                <textarea name="body" class="w-full text-sm focus:outline-none focus:ring" rows="5"
                    placeholder="Quick, thing of something to say!" required></textarea>

                @error('body')
                    <p class="text-red-500 text-xs italic mt-2">{{ $message }}</p>
                @enderror
            </div>

            <div class="flex justify-end mt-6 pt-6 border-t border-gray-200">
                <x-form.button> POST </x-form.button>

            </div>
        </form>
    </x-panel>
@else
    <p class="font-semibold">
        <a href="/register" class="hover:underline">Register</a> or
        <a href="/login" class="hover:underline">log in</a> to leave a comment.
    </p>
@endauth
