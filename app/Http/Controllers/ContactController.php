<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
class ContactController extends Controller
{
   // Dit is de functie die aangeroepen wordt vanuit Route::get()
   public function index()
   {
       return view('contact');
   }
   public function ContactRequest(Request $request)
   {
       return view('contact_success', [
           'voornaam' => $request->input('first_name')
       ]);
   }
}


