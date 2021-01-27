<!DOCTYPE html>
<html>
   <head>
       <title>@yield('title', 'Laravel pagina')</title>
       <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
       <meta charset="utf-8">
<!-- 
    <title>{{ config('app.name', 'Laravel') }}</title> -->

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<!-- Styles -->
<link href="{{ asset('css/app.css') }}" rel="stylesheet">
   </head>
   
   <body>
   <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
  <a class="navbar-brand" href="/">Portfolio</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
           <li class="nav-item active"><a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a></li>
           <li class="nav-item active"><a class="nav-link" href="/posts">Posts</a></li>
           <li class="nav-item active"><a class="nav-link" href="/overons">Over ons</a></li>
           <li class="nav-item active"><a class="nav-link" href="/contact">Contact</a></li>
           <li class="nav-item active"><a class="nav-link" href="/admin">Admin</a></li>
           <li class="nav-item active"><a class="nav-link" href="/login">login</a></li>
           
       </ul>
    <span class="navbar-text">
      Axel
    </span>
  </div>
</nav>
@yield('content')
   </body>
</html>