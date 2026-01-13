import 'package:flutter/material.dart';
import 'package:starting_app/models/get_pokemons_response.dart';
import 'package:starting_app/models/pokemon.dart';
import 'package:starting_app/services/pokemon_service.dart';

class PokemonListController extends ChangeNotifier {
  final PokemonService _service;
  GetPokemonsResponse? pokemonsResponse;
  final List<Pokemon> pokemons = [];

  PokemonListController({required PokemonService service}) : _service = service;

  void getPokemons() async {
    pokemonsResponse = await _service.getPokemons();
    pokemons.addAll(pokemonsResponse?.results ?? []);
    notifyListeners();
  }

  void nextPokemons() async {
    pokemonsResponse = await _service.getPokemons(url: pokemonsResponse?.next);
    pokemons.addAll(pokemonsResponse?.results ?? []);
    notifyListeners();
  }

  void previousPokemons() async {
    pokemonsResponse = await _service.getPokemons(url: pokemonsResponse?.previous);
    notifyListeners();
  }
}
