// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sprites_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpritesApiModel _$SpritesApiModelFromJson(Map<String, dynamic> json) {
  return _SpritesApiModel.fromJson(json);
}

/// @nodoc
mixin _$SpritesApiModel {
  String get front_defalut => throw _privateConstructorUsedError;

  /// Serializes this SpritesApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpritesApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpritesApiModelCopyWith<SpritesApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesApiModelCopyWith<$Res> {
  factory $SpritesApiModelCopyWith(
          SpritesApiModel value, $Res Function(SpritesApiModel) then) =
      _$SpritesApiModelCopyWithImpl<$Res, SpritesApiModel>;
  @useResult
  $Res call({String front_defalut});
}

/// @nodoc
class _$SpritesApiModelCopyWithImpl<$Res, $Val extends SpritesApiModel>
    implements $SpritesApiModelCopyWith<$Res> {
  _$SpritesApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpritesApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front_defalut = null,
  }) {
    return _then(_value.copyWith(
      front_defalut: null == front_defalut
          ? _value.front_defalut
          : front_defalut // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpritesApiModelImplCopyWith<$Res>
    implements $SpritesApiModelCopyWith<$Res> {
  factory _$$SpritesApiModelImplCopyWith(_$SpritesApiModelImpl value,
          $Res Function(_$SpritesApiModelImpl) then) =
      __$$SpritesApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String front_defalut});
}

/// @nodoc
class __$$SpritesApiModelImplCopyWithImpl<$Res>
    extends _$SpritesApiModelCopyWithImpl<$Res, _$SpritesApiModelImpl>
    implements _$$SpritesApiModelImplCopyWith<$Res> {
  __$$SpritesApiModelImplCopyWithImpl(
      _$SpritesApiModelImpl _value, $Res Function(_$SpritesApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpritesApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? front_defalut = null,
  }) {
    return _then(_$SpritesApiModelImpl(
      front_defalut: null == front_defalut
          ? _value.front_defalut
          : front_defalut // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpritesApiModelImpl
    with DiagnosticableTreeMixin
    implements _SpritesApiModel {
  const _$SpritesApiModelImpl({required this.front_defalut});

  factory _$SpritesApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpritesApiModelImplFromJson(json);

  @override
  final String front_defalut;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpritesApiModel(front_defalut: $front_defalut)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpritesApiModel'))
      ..add(DiagnosticsProperty('front_defalut', front_defalut));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpritesApiModelImpl &&
            (identical(other.front_defalut, front_defalut) ||
                other.front_defalut == front_defalut));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, front_defalut);

  /// Create a copy of SpritesApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpritesApiModelImplCopyWith<_$SpritesApiModelImpl> get copyWith =>
      __$$SpritesApiModelImplCopyWithImpl<_$SpritesApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpritesApiModelImplToJson(
      this,
    );
  }
}

abstract class _SpritesApiModel implements SpritesApiModel {
  const factory _SpritesApiModel({required final String front_defalut}) =
      _$SpritesApiModelImpl;

  factory _SpritesApiModel.fromJson(Map<String, dynamic> json) =
      _$SpritesApiModelImpl.fromJson;

  @override
  String get front_defalut;

  /// Create a copy of SpritesApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpritesApiModelImplCopyWith<_$SpritesApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
