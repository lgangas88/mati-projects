import 'package:flutter/material.dart';
import 'package:starting_app/controller/pokemon_list_controller.dart';
import 'package:starting_app/services/pokemon_service.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({super.key});

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  final _pokemonListController = PokemonListController(service: PokemonService());

  @override
  void initState() {
    super.initState();

    _pokemonListController.getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pokemon List'),
          actions: [
            // IconButton(onPressed: () => _pokemonListController.previousPokemons(), icon: const Icon(Icons.arrow_circle_left_outlined)),
            IconButton(onPressed: () => _pokemonListController.nextPokemons(), icon: const Icon(Icons.arrow_circle_right_outlined)),
          ],
        ),
        body: ListenableBuilder(
          listenable: _pokemonListController,
          builder: (context, child) {
            if (_pokemonListController.pokemonsResponse == null) {
              return const Center(child: CircularProgressIndicator());
            }

            final pokemons = _pokemonListController.pokemons;

            return ListView.builder(
              itemCount: pokemons.length,
              itemBuilder: (context, index) {
                final pokemon = pokemons[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${index + 1}.png',
                    ),
                  ),
                  title: Text(pokemon.name),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
