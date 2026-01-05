import 'package:flutter/material.dart';
import 'package:starting_app/models/pokemon.dart';
import 'package:starting_app/services/pokemon_service.dart';

// Model View View-Model

class PokemonController extends ChangeNotifier {
  final PokemonService _service;
  Pokemon? pokemon;

  PokemonController({required PokemonService service}) : _service = service;

  void getPokemonById(int id) async {
    pokemon = await _service.getPokemonById(id);
    notifyListeners();
  }
}
