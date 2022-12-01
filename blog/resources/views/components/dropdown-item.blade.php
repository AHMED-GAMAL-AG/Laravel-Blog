@props(['active' => false]) {{-- active is a prop i use it ti check this item if is that the page iam currently on --}}


@php
    $classes = "block text-left px-3 text-sm leading-6 hover:bg-blue-500 focus:bg-blue-500 hover:text-whie focus:text-white";

if ($active)
{
    $classes .= ' bg-blue-500 text-white';
}
@endphp


<a {{ $attributes(['class' => $classes]) }}>
    {{ $slot }}
</a>
