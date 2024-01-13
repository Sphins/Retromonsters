<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
    @foreach ($monsters as $monster)
    <article class="relative bg-gray-700 rounded-lg shadow-lg hover:shadow-2xl transition-shadow duration-300 monster-card" data-monster-type="{{strtolower($monster->monsterType->name)}}">
        <img
        class="w-full h-48 object-cover rounded-t-lg"
        src="/storage/img/{{$monster->image_url}}"
        alt="{{$monster->name}}"
        />
        <div class="p-4">
            <span class="text-sm text-gray-300">{{$monster->rarity}}</span>
            <h3 class="text-xl font-bold">{{$monster->name}}</h3>
            <h4 class="mb-2">
                <a href="#" class="text-red-400 hover:underline">{{$monster->user->username}}</a>
            </h4>
            <p class="text-gray-300 text-sm mb-2">
                {{$monster->description}}
            </p>
            <div class="flex justify-between items-center mb-2">
         <!-- Logique pour afficher les étoiles -->
         @php
         $averageRating = $monster->average_rating ?? 0;
         $fullStars = floor($averageRating);
         $halfStar = $averageRating - $fullStars >= 0.5 ? 1 : 0;
         $emptyStars = 5 - $fullStars - $halfStar;
     @endphp

@php
    $averageRating = round(($monster->average_rating ?? 0) * 2) / 2;
    $fullStars = floor($averageRating);
    $halfStar = $averageRating - $fullStars >= 0.5 ? 1 : 0;
    $emptyStars = 5 - $fullStars - $halfStar;
@endphp

<div class="mb-4">
    {{-- Étoiles pleines --}}
    @for ($i = 0; $i < $fullStars; $i++)
        <span class="text-yellow-400">&#9733;</span> {{-- Pleine étoile --}}
    @endfor

    {{-- Demi-étoile --}}
    @if ($halfStar)
        <span class="text-yellow-400">&#9734;</span> {{-- Demi étoile --}}
    @endif

    {{-- Étoiles vides --}}
    @for ($i = 0; $i < $emptyStars; $i++)
        <span class="text-gray-300">&#9734;</span> {{-- Étoile vide --}}
    @endfor

    <span class="text-gray-300 text-sm">({{ number_format($averageRating, 1) }}/5.0)</span>
</div>
                <span class="text-sm text-gray-300">Type: {{$monster->monsterType->name}}</span>
            </div>
            <div class="flex justify-between items-center mb-4">
                <span class="text-sm text-gray-300">PV: {{$monster->pv}}</span>
                <span class="text-sm text-gray-300">Attaque: {{$monster->attack}}</span>
                <span class="text-sm text-gray-300">Défense: {{$monster->defense}}</span>
            </div>
            <div class="text-center">
                <a
                href="{{ route('monsters.show',[
                    'id'=> $monster->id,
                    'slug' => \Illuminate\Support\Str::slug( $monster->name, '-')
                ]) }}"
                class="inline-block text-white bg-red-500 hover:bg-red-700 rounded-full px-4 py-2 transition-colors duration-300"
                >Plus de détails</a
                >
            </div>
        </div>
        <div class="absolute top-4 right-4">
        <button
            class="text-white bg-gray-400 hover:bg-red-700 rounded-full p-2 transition-colors duration-300"
            style="
            width: 40px;
            height: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            "
        >
            <i class="fa fa-bookmark"></i>
        </button>
        </div>
    </article>
    @endforeach
</div>