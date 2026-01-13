import 'package:starting_app/models/pokemon.dart';

class GetPokemonsResponse {
  final int count;
  final String? next;
  final String? previous;
  final List<Pokemon> results;

  GetPokemonsResponse({required this.count, required this.next, required this.previous, required this.results});
}
