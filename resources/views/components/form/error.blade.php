@props(['name']) {{-- I extracted it to a component so I don't repeat myself each time I create a new form--}}

@error($name)
    <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
@enderror
