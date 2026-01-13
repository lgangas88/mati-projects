import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:starting_app/mappers/get_pokemons_mapper.dart';
import 'package:starting_app/mappers/pokemon_mapper.dart';
import 'package:starting_app/models/get_pokemons_response.dart';
import 'package:starting_app/models/pokemon.dart';

class PokemonService {
  Future<Pokemon?> getPokemonById(int id) async {
    try {
      final response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$id'));
      final json = jsonDecode(response.body);
      return PokemonMapper.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  Future<GetPokemonsResponse?> getPokemons({int? limit, String? url}) async {
    try {
      final response = await http.get(Uri.parse(url ?? 'https://pokeapi.co/api/v2/pokemon/?limit=${limit ?? 10}'));
      final json = jsonDecode(response.body);
      return GetPokemonsMapper.fromJson(json);
    } catch (e) {
      return null;
    }
  }
}
