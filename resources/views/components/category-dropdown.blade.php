<x-dropdown> {{-- dosent have to be named bec i used  default $slot variable --}}

    <x-slot name="trigger"> {{-- has to be nammed bec triger is not the defualt variable what ever is inserted here will go to $tigger variable in dropdwon.blade component --}}
        <button class="py-2 pl-3 pr-9 text-sm font-semibold w-full lg:w-32 text-left flex lg:inline-flex">

            {{ isset($currentCategory) ? ucwords($currentCategory->name) : 'Category' }}

            <x-down-arrow class="absolute pointer-events-none" style="right: 12px;">

            </x-down-arrow>
        </button> <!-- toggle the boutton to show / hide -->
    </x-slot>


    <x-dropdown-item href="/? {{ http_build_query(request()->except('category' , 'page')) }}" :active="request()->routeis('home')"> All
        {{-- to make all is blue when selected in drop down menu --}}
    </x-dropdown-item>

    {{-- @php
        [ 'name' => 'jone'] //name = jone that what the http_build_query function will return
        request()->except('category') //retuns an array
    @endphp --}}

    @foreach ($categories as $category)
        {{-- to search and select item from drop down menue together --}}
        <x-dropdown-item
            href="/?category={{ $category->slug }} & {{ http_build_query(request()->except('category' , 'page')) }} "
            {{-- ->except('category')) bec it is duplicated one from the query and one from the current item in the drop down and 'page' bec if i choose a category while using pagination it will show nothing ex.page 4 and a category is in page 1 --}} :active="request()->is('categories/' . $category->slug)"> {{-- to make the category is blue when selected in drop down menu --}}
            {{-- same as isset($currentCategory) && $currentCategory->id == $category->id ? --}}
            {{ ucwords($category->name) }}
        </x-dropdown-item>
    @endforeach
</x-dropdown>
