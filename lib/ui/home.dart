import 'package:flutter/material.dart';
import 'package:starting_app/models/pokemon.dart';
import 'package:starting_app/services/pokemon_service.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Pokemon? _pokemon;

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
                onPressed: () async {
                  final service = PokemonService();
                  final pokemon = await service.getPokemonById(303);
                  setState(() {
                    _pokemon = pokemon;
                  });
                },
                child: Text('Presioname!'),
              ),
              if (_pokemon != null)
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(_pokemon!.imageUrl),
                  ),
                  title: Text(_pokemon!.name),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
