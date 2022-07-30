<html>
<title>hello laravel</title>
<link rel="stylesheet" href="app.css">

<body>
    <article>
        {{-- <h1> <?php echo $post->title; ?> </h1> --}}
        <h1>
            {{ $post->title }}
        </h1>
        <div>
            {!! $post->body !!} {{-- eqavilant to <?php echo $post->body; ?> --}}
        </div>
    </article>

    <a href="/">Go back</a>
</body>

</html>
