<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    /**
     * Create User
     * @param Request $request
     * @return User 
     */
    public function createUser(Request $request,User $user)
    {
        $userData = $request->only('name','email','password');
     $userData['password'] = bcrypt($userData['password']);
     
     if(!$user = $user->create($userData))
     abort(500, "Erro em criar usuario");
     
       
     //$token = Str::random(10);  
       return response()->json([
             'data' => [
                'user' => $user
             ]        
       ]);
    }

    /**
     * Login The User
     * @param Request $request
     * @return User
     */
    public function loginUser(Request $request)
    {
        $credentials = $request->only('email','password');
        if(!auth()->attempt($credentials)) abort(401, 'Invalid Credentials');
   
          $token = Auth()->user()->createToken('auth_token');
          return response()->json([
                'data' => [
                   'token' => $token->plainTextToken
                ]        
          ]);
    }
}