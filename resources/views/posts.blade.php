
@extends('layout')
@section('title')
@section('content')
	


	<main id="main">

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
			<div class="col-md-3">
				<a href="/post/{{ $post->slug }}">
					<img src="{{ Voyager::image( $post->image ) }}" style="width:100%">
					<span>{{ $post->title }}</span>
					<br> <br>
					<span>{{ $post->excerpt }}</span>
					
				</a>
				
			</div>
	
		@endforeach


		
		</div>
	</div>
  </div>
</section><!-- End Portfolio Section -->

</main><!-- End #main -->
	@endsection