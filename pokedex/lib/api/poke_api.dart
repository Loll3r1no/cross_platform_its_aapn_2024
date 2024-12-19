import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/api/http_client.dart';
import 'package:pokedex/api/models/pokemon_api_model.dart';
import 'package:pokedex/api/models/pokemon_api_response_model.dart';
import 'package:pokedex/api/models/pokemon_api_short_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'poke_api.g.dart';

@riverpod
PokemonApi pokemonApi(PokemonApiRef ref) {
  final client = ref.watch(httpClientProvider);
  return PokemonApi(client);
}

class PokemonApi {
  const PokemonApi(this.client);
  final Dio client;

  FutureOr<PokemonApiModel> search({required int id}) async {
    final response = await client.get<Map<String, Object?>>('/$id');
    final result = PokemonApiModel.fromJson(response.data!);
    return result;
  }

  FutureOr<List<PokemonApiShortModel>> list({int? page}) async {
    Response<Map<String, Object?>> response;
    if (page != null) {
      response =
          await client.get<Map<String, Object?>>('?offset=${page}0&limit=20');
    } else {
      response = await client.get<Map<String, Object?>>('');
    }
    final result = PokemonApiResponseModel.fromJson(response.data!);
    return result.results;
  }
}
