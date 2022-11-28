@props(['name', 'type' => 'text']) {{-- default value for type is text --}} {{-- I extracted it to a component so I don't repeat myself each time I create a new form --}}

<x-form.field>

    <x-form.label name="{{ $name }}" />

    <input class="border border-gray-400 p-2 w-full" type={{ $type }} $name="{{ $name }}"
        id="{{ $name }}" value="{{ old($name) }}" required>

    <x-form.error name="{{ $name }}" />

</x-form.field>
