@props(['name']) {{-- I extracted it to a component so I don't repeat myself each time I create a new form --}}

<x-form.field>

    <x-form.label name="{{ $name }}" />

    <input class="border border-gray-200 p-2 w-full rounded" name="{{ $name }}"
        id="{{ $name }}" value="{{ old($name) }}" required {{ $attributes }}> {{-- to pass any number of attribuets attributes to the component or i can accept them in the prop --}}

    <x-form.error name="{{ $name }}" />

</x-form.field>
