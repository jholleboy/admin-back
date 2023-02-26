<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;


class Tarefa extends Model
{
      protected $primaryKey = 'id_tarefa';
    protected $table = 'tarefa';
    protected $fillable = ['Descrição','Estado','user_id'];
    public  $timestamps   = false;
}
