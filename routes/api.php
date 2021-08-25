<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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
Route::post('auth/signIn', 'App\Http\Controllers\Api\UserController@SignIn');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
    
});
Route::group(['middleware' => 'auth:api'], function() {
    Route::get('employee/list', 'App\Http\Controllers\Api\EmployeeDataController@list');
});
Route::get('logout','App\Http\Controllers\Api\UserController@logoutApi');
