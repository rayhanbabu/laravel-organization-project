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

       Route::get('/{username}/member/{member}', [TestimonialController::class, 'apimember']);
       Route::get('/viewmember/edit', [TestimonialController::class,'apiviewmember']);
       Route::get('/{username}/home', [TestimonialController::class, 'apihome']);
       Route::get('/{username}/magazine', [TestimonialController::class, 'apimagazine']);
       Route::get('/{username}/notice', [TestimonialController::class, 'apinotice']);
       Route::get('/{username}/expre', [TestimonialController::class, 'apiexpre']);
       Route::get('/{username}/history', [TestimonialController::class, 'apihistory']);
       
       Route::get('/{username}/registration', [TestimonialController::class,'apiregistration']);
       Route::get('/{username}/bank',[TestimonialController::class,'apibank']);

       Route::post('/{username}/registration', [FormController::class,'registration']); 
       Route::post('/{username}/application',[TestimonialController::class,'storeapi']);

       Route::get('/{username}/admin_view',[TestimonialController::class,'apiadmin_view']);