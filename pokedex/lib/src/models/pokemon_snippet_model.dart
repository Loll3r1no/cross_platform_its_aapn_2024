import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pokemon_snippet_model.freezed.dart';

@freezed
class PokemonSnippetModel with _$PokemonSnippetModel {
  const factory PokemonSnippetModel({
    required int id,
    required String name,
  }) = _PokemonSnippetModel;
}
