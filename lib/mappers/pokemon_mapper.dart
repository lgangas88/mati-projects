import 'package:starting_app/models/pokemon.dart';

class PokemonMapper {
  const PokemonMapper._();

  static Pokemon fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      imageUrl: json['sprites']['front_default'],
    );
  }
}
