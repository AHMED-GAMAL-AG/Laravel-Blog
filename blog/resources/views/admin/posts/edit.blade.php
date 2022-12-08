<x-layout>
    <x-setting :heading="'Edit Post: ' . $post->title"> {{-- : to pass the $post->title variable --}}
        {{-- input   --}}
        <form method="POST" action="/admin/posts/{{ $post->id }}"  enctype="multipart/form-data">
            @csrf
            @method('PATCH') {{-- to use the PATCH method instead of POST the method adds a hiden input to tell laravel we want a patch request --}}

            <x-form.input name="title" :value="old('title', $post->title)" />
            <x-form.input name="slug" :value="old('slug', $post->slug)" />

            <div class="flex mt-6">
                <div class="flex-1">
                    <x-form.input name="thumbnail" type="file" :value="old('thumbnail', $post->thumbnail)" />
                </div>
                <img src="{{ asset('storage/' . $post->thumbnail) }}" alt="" class="rounded-xl ml-6" {{-- the asset() if for adding the full link not only the path http://127.0.0.1:8000/ then the path  --}}
                    width="100">
            </div>

            <x-form.textarea name="excerpt">{{ old('excerpt', $post->excerpt) }}</x-form.textarea>
            <x-form.textarea name="body">{{ old('body', $post->body) }}</x-form.textarea>


            <x-form.field>

                <x-form.label name="category" />

                <select name="category_id" id="category_id">
                    @foreach (App\Models\Category::all() as $category)
                        {{-- fetch all categories --}}
                        {{-- {{ old('category_id' , $post->category_id ) show the old selected category --}}
                        <option value="{{ $category->id }}"
                            {{ old('category_id', $post->category_id) == $category->id ? 'selected' : '' }}>
                            {{-- look in the old data the user entered if it is equal the current category_id then it is the one that the user selected "selected" is an atrribute in html --}}
                            {{ ucwords($category->name) }}
                        </option>
                    @endforeach
                </select>

                <x-form.error name="category" />

            </x-form.field>

            <x-form.button>Update</x-form.button>
        </form>
    </x-setting>
</x-layout>
