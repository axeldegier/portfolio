<!-- <!DOCTYPE html>
<html>
<head>
	<title>Homepage</title>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body> -->
@extends('layouts.app')

@section('content')
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
	@endsection