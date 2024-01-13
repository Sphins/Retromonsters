<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MonsterFeedback extends Model
{
    protected $table = 'monster_feedback';
    protected $fillable = ['user_id', 'monster_id', 'rating', 'comment'];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function monster()
    {
        return $this->belongsTo(Monster::class, 'monster_id');
    }
}
