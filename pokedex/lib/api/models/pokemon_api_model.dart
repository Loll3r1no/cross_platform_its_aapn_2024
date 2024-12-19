import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pokedex/api/models/sprites_api_model.dart';

part 'pokemon_api_model.freezed.dart';
part 'pokemon_api_model.g.dart';

@freezed
class PokemonApiModel with _$PokemonApiModel {
  const factory PokemonApiModel({
    required int id,
    required String name,
    required int height,
    required int weight,
    required SpritesApiModel sprites,
  }) = _PokemonApiModel;
  factory PokemonApiModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonApiModelFromJson(json);
}
