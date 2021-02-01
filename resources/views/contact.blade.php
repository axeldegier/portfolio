@extends('layout')
@section('title', 'Contact')
@section('content')

   <!-- <h1>Contact form</h1>
   <div id="contact">
       <form action="/contact/send" method="post">
           @csrf
           <input type="text" name="first_name" id="first_name" placeholder="first name">
           <br>
           <input type="submit" value="submit">
       </form>
   </div> -->
   
  <main id="main">

<!-- ======= Contact Section ======= -->
<section id="contact" class="contact">
  <div class="container" data-aos="fade-up">
   
    <div class="section-title">
      <h2>Contact </h2>
      <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
    </div>

    <div>
    
      <iframe style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2452.1476182922993!2d5.10405621567949!3d52.077042579732755!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c6658b39d11917%3A0xc4aaed9051c276c!2sGrafisch%20Lyceum%20Utrecht!5e0!3m2!1snl!2snl!4v1612179105182!5m2!1snl!2snl" frameborder="0" allowfullscreen></iframe>
    </div>

    <div class="row mt-5">

      <div class="col-lg-4">
        <div class="info">
          <div class="address">
            <i class="icofont-google-map"></i>
            <h4>Location:</h4>
            <p></p>
          </div>

          <div class="email">
            <i class="icofont-envelope"></i>
            <h4>Email:</h4>
            <p></p>
          </div>

          <div class="phone">
            <i class="icofont-phone"></i>
            <h4>Phonenumber:</h4>
            <p></p>
          </div>

        </div>

      </div>

      <div class="col-lg-8 mt-5 mt-lg-0">


      </div>

    </div>

  </div>
</section><!-- End Contact Section -->

</main><!-- End #main -->

@endsection