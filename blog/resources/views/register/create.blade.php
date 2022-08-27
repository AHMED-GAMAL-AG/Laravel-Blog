<x-layout>
    <section class="px-6 py-8">
        <main class="max-w-lg mx-auto mt-10 bg-gray-100 border border-gray-200 p-6 rounded-xl">
            <h1 class="text-center font-bold text-xl">Register!</h1>

            <form method="POST" action="/register"> {{-- Route::post('register', [RegisterController::class, 'store'])->middleware('guest'); --}}
                @csrf {{-- cross site request forgery  to prevent 419 PAGE EXPIRED erorr for example it shows if i clicks a button that log me out of pizza.com instead of laracts.com --}}

                <div class="mb-6">
                    <label class="block mb-2 uppercase font-bold text-xs text-gray-700" for="name"> name </label>

                    <input class="border border-gray-400  p-2 w-full" type="text" name="name" id="name"
                        value="{{ old('name') }}" required> {{-- value="{{ old('name') }} bec when i show an error message all the data is cleared --}}

                    @error('name')
                        {{-- crosponds to this from input name="name"  $message is the default error --}}
                        <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                    @enderror
                </div>

                <div class="mb-6">
                    <label class="block mb-2 uppercase font-bold text-xs text-gray-700" for="username"> username
                    </label>

                    <input class="border border-gray-400  p-2 w-full" type="text" name="username" id="username"
                        value="{{ old('username') }}" required>

                    @error('username')
                        {{-- crosponds to this from input name="username"  $message is the default error --}}
                        <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                    @enderror

                </div>

                <div class="mb-6">
                    <label class="block mb-2 uppercase font-bold text-xs text-gray-700" for="email"> email
                    </label>

                    <input class="border border-gray-400  p-2 w-full" type="email" name="email" id="email"
                        value="{{ old('email') }}" required>

                    @error('email')
                        {{-- crosponds to this from input name="email"  $message is the default error --}}
                        <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                    @enderror

                </div>

                <div class="mb-6">
                    <label class="block mb-2 uppercase font-bold text-xs text-gray-700" for="password"> password
                    </label>

                    <input class="border border-gray-400  p-2 w-full" type="password" name="password" id="password"
                        required>

                    @error('password')
                        {{-- crosponds to this from input name="password"  $message is the default error --}}
                        <p class="text-red-500 text-xs mt-1">{{ $message }}</p>
                    @enderror
                </div>


                <div class="mb-6">
                    <button type="submit"
                        class="bg-blue-400 text-white rounded p-2 px-4 hover:bg-blue-500">submit</button>
                </div>


                @if ($errors->any()) {{-- render the html if their is any error from the error messages above and show all of them in the bottom of the form --}}
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li class="text-red-500 text-xs">{{ $error }}</li>
                        @endforeach
                    </ul>
                @endif

            </form>
        </main>
    </section>
</x-layout>
