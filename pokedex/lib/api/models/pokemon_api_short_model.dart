import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pokemon_api_short_model.freezed.dart';
part 'pokemon_api_short_model.g.dart';

@freezed
class PokemonApiShortModel with _$PokemonApiShortModel {
  const factory PokemonApiShortModel({
    required String name,
    required String url,
  }) = _PokemonApiShortModel;
  factory PokemonApiShortModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonApiShortModelFromJson(json);
}
