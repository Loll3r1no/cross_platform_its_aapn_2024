import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:pokedex/api/poke_api.dart';
import 'package:pokedex/src/models/pokemon_snippet_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_list_provider.g.dart';

@riverpod
FutureOr<List<PokemonSnippetModel>> pokemonList(PokemonListRef ref) async {
  final page = Random().nextInt(10) + 1;
  final api = ref.watch(pokemonApiProvider);
  final response = await api.list(page: page);
  final models = response.map((value) {
    final integer = idFromUrl(value.url);
    return PokemonSnippetModel(id: integer, name: value.name);
  });
  return [...models.nonNulls];
}

@protected
@visibleForTesting
int idFromUrl(String url) {
  final split = url.split('/');
  final [..., id, _] = split;
  final integer = int.parse(id);
  return integer;
}
