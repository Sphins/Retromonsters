<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function monsters()
    {
        return $this->hasMany(Monster::class);
    }

    // Les monstres mis en favori par l'utilisateur
    public function favorites()
    {
        return $this->hasMany(Favorite::class);
    }

    // Les utilisateurs que cet utilisateur suit
    public function followings()
    {
        return $this->hasMany(Follow::class, 'follower_id');
    }

    // Les utilisateurs qui suivent cet utilisateur
    public function followers()
    {
        return $this->hasMany(Follow::class, 'following_id');
    }

    public function feedbacks()
    {
        return $this->hasMany(MonsterFeedback::class, 'user_id');
    }
}
