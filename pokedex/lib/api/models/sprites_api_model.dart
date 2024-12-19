import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sprites_api_model.freezed.dart';
part 'sprites_api_model.g.dart';

@freezed
class SpritesApiModel with _$SpritesApiModel {
  const factory SpritesApiModel({
    required String front_default,
  }) = _SpritesApiModel;
  factory SpritesApiModel.fromJson(Map<String, dynamic> json) =>
      _$SpritesApiModelFromJson(json);
}
