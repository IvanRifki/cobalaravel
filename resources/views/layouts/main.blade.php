<!doctype html>
<html lang="en">
  <head>
    {{-- Require meta tags --}}
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    {{-- Bootstrap CSS --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    {{-- Bootstrap Icons --}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

    {{-- MyStyle --}}
    <link rel="stylesheet" href="/css/style.css">

    {{-- unpkg feather icon --}}
    <script src="https://unpkg.com/feather-icons"></script>

    <title>Ivan Blog | {{ $title }}</title>

  </head>
  <body>

    @include('partials.navbar')

      <div class="container mt-4">
          @yield('container')
      </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    
    {{-- pakai icon feather --}}
    <script>
      feather.replace()
    </script>

  </body>
</html>