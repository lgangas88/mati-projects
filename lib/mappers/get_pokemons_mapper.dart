import 'package:starting_app/models/get_pokemons_response.dart';
import 'package:starting_app/models/pokemon.dart';

class GetPokemonsMapper {
  GetPokemonsMapper._();

  static GetPokemonsResponse fromJson(Map<String, dynamic> json) {
    return GetPokemonsResponse(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      results: (json['results'] as List).map((item) => _mapPokemon(item)).toList(),
    );
  }

  static Pokemon _mapPokemon(Map<String, dynamic> json) {
    return Pokemon(name: json['name'], imageUrl: json['url']);
  }
}
