import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/src/pages/details_page.dart';
import 'package:pokedex/src/provider/saved_pokemon_provider.dart';

class SavedPokemonPage extends ConsumerWidget {
  const SavedPokemonPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedPokemons = ref.watch(savedPokemonNotifierProvider);
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          for (final pokemon in savedPokemons)
            ListTile(
              leading: Text('${pokemon.id}'),
              title: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => DetailsPage(
                        id: pokemon.id,
                        pokemonSnippet: pokemon,
                      ),
                    );
                  },
                  child: Text(pokemon.name)),
              trailing: IconButton(
                  onPressed: () {
                    ref
                        .read(savedPokemonNotifierProvider.notifier)
                        .removePokemon(pokemon);
                  },
                  icon: const Icon(Icons.bookmark_remove)),
            )
        ],
      ),
    );
  }
}
