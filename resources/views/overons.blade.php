@extends('layout')
@section('title', 'About')
@section('content')
  
<main id="main">

<!-- ======= About Section ======= -->
<section id="about" class="about">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>About</h2>
      <p>Hi! My name is Axel de Gier,
      this is my portfolio site and on this site you can see some projects I made in the past
      for example a race game or other websites.</p>
    </div>

    <div class="row">
      <div class="col-lg-4">
        <img src="{{ asset('storage/posts/about.jpg') }}" class="img-fluid" alt="">
      </div>
      <div class="col-lg-8 pt-4 pt-lg-0 content">
        <h3>CV</h3>
        <p class="font-italic">
<h5>Education</h5>
Intermediate Vocational Education  niveau 4 / Grafisch Lyceum Utrecht<br>
2019 - present<br>

On my school Grafish Lyceum Utrecht I follow the education of Web development. On that education I am learing to work with the following programming languages: PHP, html, CSS, javascript, mySQL and phyton.<br>
Lower Vocational Education / Koningin Wilhelmina College<br>
Profile Economy / Technology / Agriculture.<br>

<br>
<h5>experience</h5>
2019 - present<br>
catering assistant |  McDonald’s<br>
Job: making orders on time.<br><br>
<h5>Skils</h5>
html<br>
CSS<br>
PHP	Javascript<br>
MySQL<br>
<br>
<h5>Activities</h5>
My hobbies are mainly korfballing and programming. Programming is something that I mainly do for school and korfball I do 3 times a week.
</p>

        
        </div>
       
      </div>
    </div>

  </div>
</section><!-- End About Section -->


</main><!-- End #main -->

@endsection