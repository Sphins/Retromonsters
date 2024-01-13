<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('pages.home');
})->name('pages.home');

Route::get('/connection', function () {
    return view('pages.connection');
})->name('pages.connection');

Route::get('/monsters', function () {
    return view('monster.index');
})->name('monster.index');

Route::get('monsters/{id}/{slug}', function ($id) {
    return view('monster.show', ['monster' => \App\Models\Monster::find($id)]);
})->name('monsters.show');

Route::get('/users', function () {
    return view('user.index');
})->name('users.index');

Route::get('my-deck', function () {
    // Récupération de l'utilisateur actuellement connecté
    $user = auth()->user();

    // Chargement des monstres favoris de l'utilisateur connecté
    $favorites = $user->favorites()->with('monster')->get();

    // Extraction des monstres de la collection de favoris
    $monsters = $favorites->map(function ($favorite) {
        return $favorite->monster;
    });
    return view('user.deck', ['monsters' => $monsters]);
})->middleware('auth')->name('users.deck');

Route::post('/login', [AuthController::class, 'login'])->name('login');

Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
