// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_api_short_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonApiShortModel _$PokemonApiShortModelFromJson(Map<String, dynamic> json) {
  return _PokemonApiShortModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonApiShortModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonApiShortModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonApiShortModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonApiShortModelCopyWith<PokemonApiShortModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonApiShortModelCopyWith<$Res> {
  factory $PokemonApiShortModelCopyWith(PokemonApiShortModel value,
          $Res Function(PokemonApiShortModel) then) =
      _$PokemonApiShortModelCopyWithImpl<$Res, PokemonApiShortModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonApiShortModelCopyWithImpl<$Res,
        $Val extends PokemonApiShortModel>
    implements $PokemonApiShortModelCopyWith<$Res> {
  _$PokemonApiShortModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonApiShortModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonApiShortModelImplCopyWith<$Res>
    implements $PokemonApiShortModelCopyWith<$Res> {
  factory _$$PokemonApiShortModelImplCopyWith(_$PokemonApiShortModelImpl value,
          $Res Function(_$PokemonApiShortModelImpl) then) =
      __$$PokemonApiShortModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonApiShortModelImplCopyWithImpl<$Res>
    extends _$PokemonApiShortModelCopyWithImpl<$Res, _$PokemonApiShortModelImpl>
    implements _$$PokemonApiShortModelImplCopyWith<$Res> {
  __$$PokemonApiShortModelImplCopyWithImpl(_$PokemonApiShortModelImpl _value,
      $Res Function(_$PokemonApiShortModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonApiShortModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonApiShortModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonApiShortModelImpl
    with DiagnosticableTreeMixin
    implements _PokemonApiShortModel {
  const _$PokemonApiShortModelImpl({required this.name, required this.url});

  factory _$PokemonApiShortModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonApiShortModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonApiShortModel(name: $name, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonApiShortModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonApiShortModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonApiShortModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonApiShortModelImplCopyWith<_$PokemonApiShortModelImpl>
      get copyWith =>
          __$$PokemonApiShortModelImplCopyWithImpl<_$PokemonApiShortModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonApiShortModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonApiShortModel implements PokemonApiShortModel {
  const factory _PokemonApiShortModel(
      {required final String name,
      required final String url}) = _$PokemonApiShortModelImpl;

  factory _PokemonApiShortModel.fromJson(Map<String, dynamic> json) =
      _$PokemonApiShortModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonApiShortModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonApiShortModelImplCopyWith<_$PokemonApiShortModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
