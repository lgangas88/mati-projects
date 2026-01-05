import 'package:flutter/material.dart';
import 'package:starting_app/controller/pokemon_controller.dart';
import 'package:starting_app/services/pokemon_service.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _pokemonController = PokemonController(service: PokemonService());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Esto no se hace!'),
              ),
              ElevatedButton(
                onPressed: () => _pokemonController.getPokemonById(5),
                child: Text('Presioname!'),
              ),
              ListenableBuilder(
                listenable: _pokemonController,
                builder: (context, child) {
                  if (_pokemonController.pokemon == null) {
                    return const SizedBox();
                  }

                  final pokemon = _pokemonController.pokemon!;

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(pokemon.imageUrl),
                    ),
                    title: Text(pokemon.name),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
