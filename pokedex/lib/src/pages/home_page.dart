import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/src/models/pokemon_snippet_model.dart';
import 'package:pokedex/src/pages/details_page.dart';
import 'package:pokedex/src/provider/pokemon_list_provider.dart';
import 'package:pokedex/src/provider/saved_pokemon_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemons = ref.watch(pokemonListProvider);
    final savedCount =
        ref.watch(savedPokemonNotifierProvider.select((value) => value.length));
    final saved = ref.watch(savedPokemonNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
        actions: [
          Badge.count(
            count: savedCount,
            child: IconButton(
              onPressed: () {
                context.pushNamed('saved');
              },
              icon: const Icon(Icons.list),
            ),
          ),
        ],
      ),
      body: switch (pokemons) {
        AsyncData(:final value) => RefreshIndicator(
            onRefresh: () {
              return ref.refresh(pokemonListProvider.future);
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: ListView(
                  children: [
                    for (final pokemon in value)
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
                            saved.contains(pokemon) == true
                                ? ref
                                    .read(savedPokemonNotifierProvider.notifier)
                                    .removePokemon(pokemon)
                                : ref
                                    .read(savedPokemonNotifierProvider.notifier)
                                    .addPokemon(pokemon);
                          },
                          icon: saved.contains(pokemon) == true
                              ? const Icon(Icons.bookmark_remove)
                              : const Icon(Icons.bookmark_add),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        AsyncLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
        AsyncError(:final error) => Center(
            child: Text('Spiase esplodi ${error.toString()}'),
          ),
        // TODO: Handle this case.
        AsyncValue<List<PokemonSnippetModel>>() => throw UnimplementedError(),
        // TODO: Handle this case.
      },
    );
  }
}
