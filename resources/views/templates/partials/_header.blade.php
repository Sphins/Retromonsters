<header class="bg-gray-900 shadow-lg relative top-8" x-data="{ open: false, userMenuOpen: false }">
  <nav class="container mx-auto px-4 py-4 mb-16 flex justify-between items-center">
      <div class="flex items-center">
          <a href="{{ route('pages.home') }}">
              <img src="/storage/img/Logo_RetroMonsters.png" alt="RetroMonsters Logo" class="h-32 mr-3 absolute" style="top: -28px" />
          </a>
          <a href="#" class="text-white font-bold text-xl hidden">RetroMonsters</a>
      </div>

      <button @click="open = !open" class="text-white md:hidden">
          <i class="fa fa-bars"></i>
      </button>

      <div class="hidden md:flex items-center">
          <a class="text-gray-300 hover:text-white px-3 py-2 hover:bg-gray-700" href="{{ route('monster.index') }}">Monstres</a>
          <a class="text-gray-300 hover:text-white px-3 py-2 hover:bg-gray-700" href="{{ route('users.index') }}">Créateurs</a>

          @guest
          <a class="text-gray-300 hover:text-white px-3 py-2 hover:bg-gray-700" href="{{ route('pages.connection') }}">Se connecter</a>
          @endguest

          @auth
          <div class="relative" x-data="{ userMenuOpen: false }">
              <button @click="userMenuOpen = !userMenuOpen" class="text-white">
                  <img src="/storage/img/user.webp" alt="User" class="w-16" />
              </button>

              <div x-show="userMenuOpen" @click.away="userMenuOpen = false" class="absolute right-0 mt-2 w-48 bg-gray-100 rounded-md shadow-lg pb-1 z-50">
                  <div class="text-gray-200 px-4 py-2 bg-gray-400 text-center">Username</div>
                  <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-200">Mon Profil</a>
                  <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-200">Mon Deck</a>
                  <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-200">Ajouter un Monstre</a>
                  <a href="#" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-200">Se Déconnecter</a>
              </div>
          </div>
          @endauth
      </div>
  </nav>

  <div x-show="open" class="md:hidden p-8">
      <a class="block bg-gray-900 text-white px-4 py-2 hover:bg-gray-700" href="#">Monstres</a>
      <a class="block bg-gray-900 text-white px-4 py-2 hover:bg-gray-700" href="#">Créateurs</a>

      @guest
      <a class="block bg-gray-900 text-white px-4 py-2 hover:bg-gray-700" href="#">Se connecter</a>
      @endguest

      @auth
      <a class="block bg-gray-900 text-white px-4 py-2 hover:bg-gray-700" href="#">Mon Profil</a>
      <a class="block bg-gray-900 text-white px-4 py-2 hover:bg-gray-700" href="#">Mon Deck</a>
      <a class="block bg-gray-900 text-white px-4 py-2 hover:bg-gray-700" href="#">Ajouter un Monstre</a>
      <a class="block bg-gray-900 text-white px-4 py-2 hover:bg-gray-700" href="#">Se Déconnecter</a>
      @endauth
  </div>
</header>
