<?php

namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use Validator;
use Illuminate\Validation\Rule;
use App\Models\EmployeeData;
use Illuminate\Support\Facades\Auth;
class EmployeeDataController extends APIController
{
    public function list(){
        if (Auth::check()) {
            $EmployeeData = EmployeeData::all();
            return $this->respond($EmployeeData);
        }else{
            return $this->noRespondWithMessage('Login Fail, Please Login Again.');
        }
    }
}
