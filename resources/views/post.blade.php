@extends('layout')

@section('title', 'Home')

@section('content')
<main id="main">
<section id="portfolio" class="portfolio">
  <div class="container" data-aos="fade-up">
	<div class="section-title">
	  <h2>Post</h2>
	</div>
	<div class="container">
	
		<div class="row">
			<div class="col-md-8 col-md-offset-2">

				<h1>{{ $post->title }}</h1>
				<img src="{{ Voyager::image( $post->image ) }}" style="width:100%">
				<p>{!! $post->body !!}</p>
				

			</div>
		</div>
	</div>
	</section><!-- End Hero -->
	</main><!-- End #main -->
    
    @endsection
