import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/src/models/pokemon_details_model.dart';
import 'package:pokedex/src/models/pokemon_snippet_model.dart';
import 'package:pokedex/src/provider/pokemon_details_provider.dart';
import 'package:pokedex/src/provider/pokemon_list_provider.dart';
import 'package:pokedex/src/provider/saved_pokemon_provider.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage(
      {super.key, required this.id, required this.pokemonSnippet});
  final int id;
  final PokemonSnippetModel pokemonSnippet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemon = ref.watch(pokemonDetailsProvider(id));
    final saved = ref.watch(savedPokemonNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              saved.contains(pokemonSnippet) == true
                  ? ref
                      .read(savedPokemonNotifierProvider.notifier)
                      .removePokemon(pokemonSnippet)
                  : ref
                      .read(savedPokemonNotifierProvider.notifier)
                      .addPokemon(pokemonSnippet);
            },
            icon: saved.contains(pokemonSnippet) == true
                ? const Icon(Icons.bookmark_remove)
                : const Icon(Icons.bookmark_add),
          ),
        ],
      ),
      body: switch (pokemon) {
        AsyncData(:final value) => Center(
            child: Column(
              children: [
                SizedBox(
                  child: Image.network(pokemon.value.sprites.front_default),
                ),
                Row(
                  children: [
                    Card(
                      child: Text('height: ${pokemon.value.height}'),
                    ),
                    Card(
                      child: Text('weight: ${pokemon.value.weight}'),
                    )
                  ],
                )
              ],
            ),
          ),
        AsyncLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
        AsyncError(:final error) => Center(
            child: Text('Spiase esplodi ${error.toString()}'),
          ),
        // TODO: Handle this case.
        AsyncValue<PokemonDetailsModel>() => throw UnimplementedError(),
      },
    );
  }
}
