<x-layout>
    <section class="px-6 py-8">
        <main class="max-w-lg mx-auto mt-10 bg-gray-100">

            <x-panel>
                <h1 class="text-center font-bold text-xl">Log In!</h1>

                <form method="POST" action="/login" class="mt-10"> {{-- go to this end point login  Route::post('login', [SessionsController::class, 'store'])->middleware('guest');  --}}
                    @csrf {{-- cross site request forgery  to prevent 419 PAGE EXPIRED erorr for example it shows if i clicks a button that log me out of pizza.com instead of laracts.com --}}

                    <x-form.input name="email" type="email" autocomplete="username" />
                    <x-form.input name="password" type="password" autocomplete="new-password" />


                    <x-form.button>Log In</x-form.button>

                </form>
            </x-panel>
        </main>
    </section>
</x-layout>
