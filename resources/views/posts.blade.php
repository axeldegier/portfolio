
@extends('layout')
@section('title')
@section('content')
	


	<main id="main">
	<section id="hero" class="d-flex align-items-center">
    <div class="container d-flex flex-column align-items-center" data-aos="zoom-in" data-aos-delay="100">
      <h1>Axel de Gier</h1>
      <h2>I'm a Web Developer</h2>
      
      <a class="nav-link btn-about" href="#portfolio">Projects</a>
    </div>
  </section>





<!-- ======= Portfolio Section ======= -->
<section id="portfolio" class="portfolio">
  <div class="container" data-aos="fade-up">
	<div class="section-title">
	  <h2>portfolio</h2>
	  <p>Here you can find the projects I have made so far</p>
	</div>
	<div class="container">
		
		<br><br>
		<div class="row">
		@foreach($posts as $post)
			<!-- <div class="col-md-3">
				<a href="/post/{{ $post->slug }}">
					<img src="{{ Voyager::image( $post->image ) }}" style="width:100%">
					<span>{{ $post->title }}</span>
					<br> <br>
					<span>{{ $post->excerpt }}</span>
					
				</a>
				
			</div> -->

			<div class="card mr-3" style="width: 16rem;">
  <img class="card-img-top" src="{{ Voyager::image( $post->image ) }}" alt="posts" style="width:100%">
  <div class="card-body">
    <h5 class="card-title">{{ $post->title }}</h5>
    <p class="card-text">{{ $post->excerpt }}.</p>
    <a href="/post/{{ $post->slug }}" class="btn-details">Details</a>
  </div>
</div>
	
		@endforeach


		
		</div>
	</div>
  </div>
</section>

</main>
	@endsection