<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\TestimonialController;
use App\Http\Controllers\FormController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

  Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
       return $request->user();
  });


       Route::get('/member/{username}/{member}', [TestimonialController::class, 'apimember']);
       Route::get('/viewmember/edit', [TestimonialController::class,'apiviewmember']);
       Route::get('/home/{username}', [TestimonialController::class, 'apihome']);
       Route::get('/magazine/{username}', [TestimonialController::class, 'apimagazine']);
       Route::get('/notice/{username}', [TestimonialController::class, 'apinotice']);
       Route::get('/expre/{username}', [TestimonialController::class, 'apiexpre']);
       Route::get('/history/{username}', [TestimonialController::class, 'apihistory']);
       
       Route::get('/registration/{username}', [TestimonialController::class,'apiregistration']);
       
       Route::get('/bank/{username}',[TestimonialController::class,'apibank']);


       Route::post('/registration', [FormController::class,'registration']);
        
       Route::post('/application',[TestimonialController::class,'storeapi']);