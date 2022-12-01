<x-layout>
    <section class="px-6 py-8">

        <main class="max-w-lg mx-auto mt-10 bg-gray-100">
            <x-panel>
                <h1 class="text-center font-bold text-xl">Register!</h1>

                <form method="POST" action="/register"> {{-- Route::post('register', [RegisterController::class, 'store'])->middleware('guest'); --}}
                    @csrf {{-- cross site request forgery  to prevent 419 PAGE EXPIRED erorr for example it shows if i clicks a button that log me out of pizza.com instead of laracts.com --}}

                    <x-form.input name="name" type="text" autocomplete="name" />

                    <x-form.input name="username" type="text" autocomplete="username" />

                    <x-form.input name="email" type="email" autocomplete="email" />

                    <x-form.input name="password" type="password" autocomplete="new-password" />


                    {{-- select gender --}}
                    <div class='mb-6 mt-6'>
                        <div class=" relative flex lg:inline-flex items-center bg-gray-100 ">

                            <label class="block uppercase font-bold text-xs text-gray-700 mr-2" for="gender">
                                Select your gender :
                            </label>

                            <select
                                class="flex-1 appearance-none bg-transparent py-2 pl-3 pr-9 text-sm font-semibold bg-gray-200 rounded-xl"
                                name="gender" required>
                                <option value="" disabled selected>Gender
                                </option>
                                <option value="male">Male
                                </option>
                                <option value="female">Female
                                </option>
                            </select>

                            <x-down-arrow class="absolute pointer-events-none" style="right: 12px;" />
                        </div>

                        <x-form.error name='gender' />
                    </div>


                    <x-form.button>Sign Up</x-form.button>

                </form>
            </x-panel>
        </main>
    </section>
</x-layout>
