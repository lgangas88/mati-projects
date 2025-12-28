import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:starting_app/mappers/pokemon_mapper.dart';
import 'package:starting_app/models/pokemon.dart';

class PokemonService {
  Future<Pokemon> getPokemonById(int id) async {
    final response = await http.get(
      Uri.parse('https://pokeapi.co/api/v2/pokemon/$id'),
    );
    final json = jsonDecode(response.body);
    return PokemonMapper.fromJson(json);
  }
}
