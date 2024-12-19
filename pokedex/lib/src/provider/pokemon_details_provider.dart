import 'package:pokedex/api/poke_api.dart';
import 'package:pokedex/src/models/pokemon_details_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_details_provider.g.dart';

@riverpod
FutureOr<PokemonDetailsModel> pokemonDetails(
    PokemonDetailsRef ref, int id) async {
  final api = ref.watch(pokemonApiProvider);
  final response = await api.search(id: id);
  return response;
}
