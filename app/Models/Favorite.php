<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Favorite extends Model
{
    use HasFactory;

    // Chaque favori appartient à un utilisateur
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Chaque favori est lié à un monstre
    public function monster()
    {
        return $this->belongsTo(Monster::class);
    }
}
