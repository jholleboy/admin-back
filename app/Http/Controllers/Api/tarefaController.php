<?php
namespace App\Http\Controllers\Api;

use App\Models\Tarefa;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


class tarefaController extends Controller
{
    
    public function index()
    {
        $Tarefa = Tarefa::join('users', 'users.id', '=', 'tarefa.user_id')->get();
        return response()->json($Tarefa);
      
    }
    public function store(Tarefa $Tarefa,Request $request)
    {
        try {
            $Tarefa = new Tarefa;
                    $Tarefa->Descricao = $request->descricao;
                    $Tarefa->Estado = $request->estado;
                    $Tarefa->user_id = $request->user_id;    
                    $Tarefa->save();
            
            return response()->json('Tarefa Adicionado com sucesso!',200);
            }catch (\Throwable $th) {
                return response()->json('Tivemos um problema!',500);
            }
    }

    public function show($id)
    {
        $Tarefa = Tarefa::find($id);
        return response()->json($Tarefa);
    }

   
    public function update(Request $request,$id_tareda)
    {   
        try{    
               
            $Tarefa = Tarefa::findOrFail($id_tareda);
            $Tarefa->Descricao = $request->descricao;
            $Tarefa->Estado = $request->estado;
            $Tarefa->user_id = $request->user_id; 
            $Tarefa->update();
            return response()->json('Tarefa Atualizado com sucesso!',200);
             }catch (\Throwable $th) {
                return response()->json('Tivemos um problema!',500);
            }    
    }


   
    public function destroy($id)
    {
        try{
            Tarefa::destroy($id);
            return response()->json('Tarefa removido com sucesso!',200);
            }catch (\Throwable $th) {
                return response()->json('Tivemos um problema!',500);
            }   
    }
    
           
}
