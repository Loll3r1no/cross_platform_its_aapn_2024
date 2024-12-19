import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pokedex/api/models/pokemon_api_model.dart';
import 'package:pokedex/api/models/pokemon_api_short_model.dart';

part 'pokemon_api_response_model.freezed.dart';
part 'pokemon_api_response_model.g.dart';

@freezed
class PokemonApiResponseModel with _$PokemonApiResponseModel {
  const factory PokemonApiResponseModel({
    required String? next,
    required String? previous,
    required List<PokemonApiShortModel> results,
  }) = _PokemonApiResponseModel;
  factory PokemonApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonApiResponseModelFromJson(json);
}
