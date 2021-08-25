<?php

namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use Validator;
use Illuminate\Support\Facades\Auth;
use App\User;
use Illuminate\Support\Facades\Hash;

class UserController extends APIController
{
    public function SignIn(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'email'=>'required|email',
            'password'=>'required',
        ]);
        if ($validation->fails()) {
            return $this->throwValidation($validation->errors()->first());
        }
        
        
            
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])){
                $access_token = 'User_token';
                $user = Auth::user();
                
                $tokenResult = $user->createToken($access_token);
                $token_data = $tokenResult->token;
                $token_data->save();
                    
                $json = $this->setData("user", $user);
                $json['token']=$tokenResult->accessToken;
                return $this->respond($json);
            
            
        } else {
            return $this->noRespondWithMessage('User not Found.');
        }
    }

    public function logoutApi()
{ 
    if (Auth::check()) {
       Auth::user()->AauthAcessToken()->delete();
    }
}
}
