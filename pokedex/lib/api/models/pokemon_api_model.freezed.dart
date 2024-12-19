// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonApiModel _$PokemonApiModelFromJson(Map<String, dynamic> json) {
  return _PokemonApiModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonApiModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  SpritesApiModel get sprites => throw _privateConstructorUsedError;

  /// Serializes this PokemonApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonApiModelCopyWith<PokemonApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonApiModelCopyWith<$Res> {
  factory $PokemonApiModelCopyWith(
          PokemonApiModel value, $Res Function(PokemonApiModel) then) =
      _$PokemonApiModelCopyWithImpl<$Res, PokemonApiModel>;
  @useResult
  $Res call(
      {int id, String name, int height, int weight, SpritesApiModel sprites});

  $SpritesApiModelCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonApiModelCopyWithImpl<$Res, $Val extends PokemonApiModel>
    implements $PokemonApiModelCopyWith<$Res> {
  _$PokemonApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? sprites = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as SpritesApiModel,
    ) as $Val);
  }

  /// Create a copy of PokemonApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpritesApiModelCopyWith<$Res> get sprites {
    return $SpritesApiModelCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonApiModelImplCopyWith<$Res>
    implements $PokemonApiModelCopyWith<$Res> {
  factory _$$PokemonApiModelImplCopyWith(_$PokemonApiModelImpl value,
          $Res Function(_$PokemonApiModelImpl) then) =
      __$$PokemonApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, int height, int weight, SpritesApiModel sprites});

  @override
  $SpritesApiModelCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokemonApiModelImplCopyWithImpl<$Res>
    extends _$PokemonApiModelCopyWithImpl<$Res, _$PokemonApiModelImpl>
    implements _$$PokemonApiModelImplCopyWith<$Res> {
  __$$PokemonApiModelImplCopyWithImpl(
      _$PokemonApiModelImpl _value, $Res Function(_$PokemonApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? sprites = null,
  }) {
    return _then(_$PokemonApiModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as SpritesApiModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonApiModelImpl
    with DiagnosticableTreeMixin
    implements _PokemonApiModel {
  const _$PokemonApiModelImpl(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required this.sprites});

  factory _$PokemonApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonApiModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  @override
  final SpritesApiModel sprites;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonApiModel(id: $id, name: $name, height: $height, weight: $weight, sprites: $sprites)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonApiModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('weight', weight))
      ..add(DiagnosticsProperty('sprites', sprites));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonApiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.sprites, sprites) || other.sprites == sprites));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, height, weight, sprites);

  /// Create a copy of PokemonApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonApiModelImplCopyWith<_$PokemonApiModelImpl> get copyWith =>
      __$$PokemonApiModelImplCopyWithImpl<_$PokemonApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonApiModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonApiModel implements PokemonApiModel {
  const factory _PokemonApiModel(
      {required final int id,
      required final String name,
      required final int height,
      required final int weight,
      required final SpritesApiModel sprites}) = _$PokemonApiModelImpl;

  factory _PokemonApiModel.fromJson(Map<String, dynamic> json) =
      _$PokemonApiModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  SpritesApiModel get sprites;

  /// Create a copy of PokemonApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonApiModelImplCopyWith<_$PokemonApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
