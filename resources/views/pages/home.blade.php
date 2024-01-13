@extends('templates.index')

@section ('title')
    Acceuille
@stop

@section('content')
    <!-- Section Monstre Aléatoire -->
      <section class="mb-20">
        @include('monster._aleatMonster', [
          'monster' => \App\Models\Monster::inRandomOrder()->first()
      ])
      </section>
  
      <!-- Section Derniers monstres -->
      <section class="mb-20">
        <h2 class="text-2xl font-bold mb-4 creepster">
          Derniers monstres ajoutés
        </h2>
          <!-- Monster Item -->
          @include('monster._index', [
            'monsters' => \App\Models\Monster::orderBy('created_at', 'DESC')->limit(3)->get()
        ])
      </section>

  <!-- Section suivis (visible uniquement si l'utilisateur est connecté) -->
  @auth
    <section>
      <h2 class="text-2xl font-bold mb-4 creepster">
        Derniers monstres ajoutés par les utilisateurs que vous suivez
      </h2>
      @php
          $followedUsers = auth()->user()->followings()->pluck('following_id');
          $monsters = \App\Models\Monster::whereIn('user_id', $followedUsers)
                      ->orderBy('created_at', 'DESC')
                      ->limit(3)
                      ->get();
      @endphp
      @include('monster._index', [
          'monsters' => $monsters
      ])
  </section>
  @endauth
@stop