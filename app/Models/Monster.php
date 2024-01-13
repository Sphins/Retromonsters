<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Monster extends Model
{
    use HasFactory;


    public function monsterType()
    {
        return $this->belongsTo(MonsterType::class, 'type_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function favorites()
    {
        return $this->hasMany(Favorite::class);
    }
    public function feedbacks()
    {
        return $this->hasMany(MonsterFeedback::class, 'monster_id');
    }
    public function getAverageRatingAttribute()
    {
        return MonsterAverageRating::where('monster_id', $this->id)->value('average_rating');
    }
}
