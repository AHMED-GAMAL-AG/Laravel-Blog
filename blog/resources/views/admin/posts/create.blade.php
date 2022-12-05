<x-layout>
    <x-setting heading="Publish New Post">
        {{-- input   --}}
        <form action="/admin/posts" method="post" enctype="multipart/form-data">
            @csrf

            <x-form.input name="title" />
            <x-form.input name="slug" />
            <x-form.input name="thumbnail" type="file" />
            <x-form.textarea name="excerpt" />
            <x-form.textarea name="body" />

            <x-form.field>

                <x-form.label name="category" />

                <select name="category_id" id="category_id">
                    @foreach (App\Models\Category::all() as $category)
                        {{-- fetch all categories --}}
                        <option value="{{ $category->id }}" {{ old('category_id') == $category->id ? 'selected' : '' }}>
                            {{-- look in the old data the user entered if it is equal the current category_id then it is the one that the user selected "selected" is an atrribute in html --}}
                            {{ ucwords($category->name) }}
                        </option>
                    @endforeach
                </select>

                <x-form.error name="category" />

            </x-form.field>

            <x-form.button>Publish</x-form.button>
        </form>
    </x-setting>
</x-layout>
