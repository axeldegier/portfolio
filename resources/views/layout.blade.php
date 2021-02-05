<!DOCTYPE html>
<html>
   <head>
       <title>@yield('title', 'Laravel pagina')</title>
       <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
       <meta charset="utf-8">
      
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://kit.fontawesome.com/e9ffd00ef3.js" crossorigin="anonymous"></script>

    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<link href="{{ asset('css/app.css') }}" rel="stylesheet">
<link href="{{ asset('css/style.css') }}" rel="stylesheet">


<link href="{{ asset('vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset('vendor/icofont/icofont.min.css') }}" rel="stylesheet">
<link href="{{ asset('vendor/owl.carousel/assets/owl.carousel.min.css') }}" rel="stylesheet">
<link href="{{ asset('vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
<link href="{{ asset('vendor/venobox/venobox.css') }}" rel="stylesheet">



   </head>
   
   <body>
   <header id="header" class="fixed-top">
    <div class="container-fluid d-flex justify-content-between align-items-center">

      <h1 class="logo"><a class="nav-link" href="/">Axel   <span class="sr-only">(current)</span></a></h1>
     

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="nav-item active"><a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a></li>
          <li class="nav-item active"><a class="nav-link" href="/posts">Posts</a></li>
          <li class="nav-item active"><a class="nav-link" href="/overons">About</a></li>
          <li class="nav-item active"><a class="nav-link" href="/contact">Contact</a></li>
          <li class="nav-item active"><a class="nav-link" href="/admin">Admin</a></li>
          <!-- <li class="nav-item active"><a class="nav-link" href="/login">login</a></li> -->

          
        </ul>
      </nav>

      <div class="header-social-links">
      <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <!-- <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li> -->
                            @if (Route::has('register'))
                                <!-- <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li> -->
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                    <a class="" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('- Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
      </div>

    </div>

  </header>
  

@yield('content')
 
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Axel</span></strong>. All Rights Reserved
        
      </div>
    </div>
    <div class="header-social-links">
 
        <a href="https://github.com/axeldegier/" class="linkedin"><i class="fab fa-github"></i>
      </div>
      
  </footer>

 
  <a href="#" class="back-to-top"><i class="bx bx-up-arrow-alt"></i></a>
  <script src="{{ asset('vendor/jquery/jquery.min.js') }}" defer></script>
  <script src="{{ asset('vendor/bootstrap/js/bootstrap.bundle.min.js') }}" defer></script>
  <script src="{{ asset('vendor/jquery.easing/jquery.easing.min.js') }}" defer></script>

  <script src="{{ asset('vendor/waypoints/jquery.waypoints.min.js') }}" defer></script>
  <script src="{{ asset('vendor/counterup/counterup.min.js') }}" defer></script>
  <script src="{{ asset('vendor/owl.carousel/owl.carousel.min.js') }}" defer></script>
  <script src="{{ asset('vendor/isotope-layout/isotope.pkgd.min.js') }}" defer></script>
  <script src="{{ asset('vendor/venobox/venobox.min.js') }}" defer></script>
 

  <script src="{{ asset('js/main.js') }}" defer></script>
  
  
   </body>
</html>