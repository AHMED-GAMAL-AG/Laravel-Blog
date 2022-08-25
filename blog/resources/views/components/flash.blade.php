@if (session()->has('success'))
    {{-- flash message that hides after 4 sec using apline.js the session is created in RegisterController file --}}
    <div x-data="{ show: true }" x-init="setTimeout(() => show = false, 4000)" x-show="show"
        class="fixed bg-blue-500 text-white py-2 px-4 rounded-xl bottom-3 right-3 text-sm">
        <p>
            {{ session('success') }} {{-- equivalent to {{ session()->get('success'); }} --}}
        </p>
    </div>
@endif
