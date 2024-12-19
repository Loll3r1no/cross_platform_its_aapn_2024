import 'package:pokedex/src/models/pokemon_snippet_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'saved_pokemon_provider.g.dart';

@riverpod
class SavedPokemonNotifier extends _$SavedPokemonNotifier {
  @override
  List<PokemonSnippetModel> build() {
    ref.keepAlive();
    return [];
  }

  void addPokemon(PokemonSnippetModel profile) {
    state = [...state, profile];
  }

  void removePokemon(PokemonSnippetModel profile) {
    state = [
      ...state.where(
        (element) => element != profile,
      )
    ];
  }
}
