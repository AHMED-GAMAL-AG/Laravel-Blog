@props(['name']) {{-- I extracted it to a component so I don't repeat myself each time I create a new form--}}

<label class="block mb-2 uppercase font-bold text-xs test-gray-700" for="{{ $name }}">
    {{ ucwords($name) }}
</label>
