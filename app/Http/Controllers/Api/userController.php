<?php

namespace App\Http\Controllers\Api;
use App\Models\Tarefa;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


class userController extends Controller
{
    /**
     * Create User
     * @param Request $request
     * @return User 
     */
    public function index()
    {
        
        
        $usuario = User::all();
        return response()->json($usuario);
      
    }
    public function store(Request $request)
    {
        try {
            $senha = $request->input('password');
            $criptoSenha = Hash::make($senha);
            $user = new User();
            $user->name = $request->input('name');
            $user->password = $criptoSenha;
            $user->email = $request->input('email');
            //dd($user);
            $user->save();  
        return response()->json('Usuário criado com sucesso!',200);
        }catch (\Throwable $th) {
            return response()->json('Tivemos um problema!',500);}
       
    }
    public function show($id)
    {

        $usuario = User::find($id);
        $usuario = Tarefa::join('users', 'users.id', '=', 'tarefa.user_id')->where('users.id',$id)->get();
        return response()->json($usuario);
    }
    public function update(Request $request,$id)
    {   
        
        try {
        
        $senha = $request->input('password');
        $criptoSenha = Hash::make($senha);
        $usuario = User::findOrFail($id);
        
        $usuario = $usuario->fill($request->only('name','email','password => $criptoSenha'));
        
        $usuario->update();
        $request->input('password', '=', $criptoSenha); 
        
        return response()->json('Usuário Atualizado com sucesso!',200);
        }catch (\Throwable $th) {
            return response()->json('Tivemos um problema!',500);}
       
    }
    public function destroy($id)
    {
        try{
            User::destroy($id);
        return response()->json('removido com sucesso!',200);
        }catch (\Throwable $th) {
            return response()->json('Tivemos um problema!',500);
        }    
    }
}