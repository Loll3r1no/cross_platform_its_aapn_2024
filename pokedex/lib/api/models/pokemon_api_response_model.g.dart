// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonApiResponseModelImpl _$$PokemonApiResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonApiResponseModelImpl(
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonApiShortModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonApiResponseModelImplToJson(
        _$PokemonApiResponseModelImpl instance) =>
    <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
