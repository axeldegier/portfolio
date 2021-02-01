
@extends('layout')
@section('title')
@section('content')
	


	<main id="main">

<!-- ======= Portfolio Section ======= -->
<section id="portfolio" class="portfolio">
  <div class="container" data-aos="fade-up">
	<div class="section-title">
	  <h2>portfolio</h2>
	  <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
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