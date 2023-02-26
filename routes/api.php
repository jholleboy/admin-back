<?php
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\userController;
use App\Http\Controllers\Api\tarefaController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
    
});
    Route::post('/auth/register', [AuthController::class, 'createUser']);
    Route::post('/auth/login', [AuthController::class, 'loginUser']);
    ////---- Rotas de Usuario ----/////
    Route::get('/user', [userController::class, 'index']);
    Route::get('/user/{id}', [userController::class, 'show']);
    Route::patch('/user/{id}', [userController::class, 'update'])->middleware('auth:sanctum');
    Route::delete('/user/{id}', [userController::class, 'destroy'])->middleware('auth:sanctum');
    Route::post('/user', [userController::class, 'store'])->middleware('auth:sanctum');
    ////---- Rotas de Tarefa ----/////
    Route::get('/tarefa', [tarefaController::class, 'index']);
    Route::get('/tarefa/{id}', [tarefaController::class, 'show']);
    Route::patch('/tarefa/{id}', [tarefaController::class, 'update']);
    Route::delete('tarefa/{id}', [tarefaController::class, 'destroy'])->middleware('auth:sanctum');
    Route::post('/tarefa', [tarefaController::class, 'store']);
