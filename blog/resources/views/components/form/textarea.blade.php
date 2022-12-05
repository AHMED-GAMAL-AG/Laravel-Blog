@props(['name']) {{-- I extracted it to a component so I don't repeat myself each time I create a new form --}}

<x-form.field>
    <x-form.label name="{{ $name }}" />

    <textarea class="border border-gray-200 p-2 w-full rounded"
    name="{{ $name }}"
    id="{{ $name }}"
    required>
    {{ $slot ?? old($name) }} {{-- allow a slot $slot ??  --}}
    </textarea>

    <x-form.error name=" {{ $name }} " />
</x-form.field>
