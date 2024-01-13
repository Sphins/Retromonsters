<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MonsterAverageRating extends Model
{
    use HasFactory;
    protected $table = 'monster_average_ratings';
    public $timestamps = false;
}
