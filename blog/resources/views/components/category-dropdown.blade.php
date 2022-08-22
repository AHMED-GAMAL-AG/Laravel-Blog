<x-dropdown> {{-- dosent have to be named bec i used  default $slot variable --}}

    <x-slot name="trigger"> {{-- has to be nammed bec triger is not the defualt variable what ever is inserted here will go to $tigger variable in dropdwon.blade component --}}
        <button class="py-2 pl-3 pr-9 text-sm font-semibold w-full lg:w-32 text-left flex lg:inline-flex">

            {{ isset($currentCategory) ? ucwords($currentCategory->name) : 'Category' }}

            <x-down-arrow class="absolute pointer-events-none" style="right: 12px;">

            </x-down-arrow>
        </button> <!-- toggle the boutton to show / hide -->
    </x-slot>


    <x-dropdown-item href="/" :active="request()->routeis('home')"> {{-- to make all is blue when selected in drop down menu --}}
        All
    </x-dropdown-item>
    @foreach ($categories as $category)
        <x-dropdown-item href="/?category={{ $category->slug }}" :active="request()->is('categories/' . $category->slug)"> {{-- to make the category is blue when selected in drop down menu --}}
            {{-- same as isset($currentCategory) && $currentCategory->id == $category->id ? --}}
            {{ ucwords($category->name) }}
        </x-dropdown-item>
    @endforeach
</x-dropdown>
