// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonApiResponseModel _$PokemonApiResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonApiResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonApiResponseModel {
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonApiShortModel> get results => throw _privateConstructorUsedError;

  /// Serializes this PokemonApiResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonApiResponseModelCopyWith<PokemonApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonApiResponseModelCopyWith<$Res> {
  factory $PokemonApiResponseModelCopyWith(PokemonApiResponseModel value,
          $Res Function(PokemonApiResponseModel) then) =
      _$PokemonApiResponseModelCopyWithImpl<$Res, PokemonApiResponseModel>;
  @useResult
  $Res call(
      {String? next, String? previous, List<PokemonApiShortModel> results});
}

/// @nodoc
class _$PokemonApiResponseModelCopyWithImpl<$Res,
        $Val extends PokemonApiResponseModel>
    implements $PokemonApiResponseModelCopyWith<$Res> {
  _$PokemonApiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonApiShortModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonApiResponseModelImplCopyWith<$Res>
    implements $PokemonApiResponseModelCopyWith<$Res> {
  factory _$$PokemonApiResponseModelImplCopyWith(
          _$PokemonApiResponseModelImpl value,
          $Res Function(_$PokemonApiResponseModelImpl) then) =
      __$$PokemonApiResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? next, String? previous, List<PokemonApiShortModel> results});
}

/// @nodoc
class __$$PokemonApiResponseModelImplCopyWithImpl<$Res>
    extends _$PokemonApiResponseModelCopyWithImpl<$Res,
        _$PokemonApiResponseModelImpl>
    implements _$$PokemonApiResponseModelImplCopyWith<$Res> {
  __$$PokemonApiResponseModelImplCopyWithImpl(
      _$PokemonApiResponseModelImpl _value,
      $Res Function(_$PokemonApiResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$PokemonApiResponseModelImpl(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonApiShortModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonApiResponseModelImpl
    with DiagnosticableTreeMixin
    implements _PokemonApiResponseModel {
  const _$PokemonApiResponseModelImpl(
      {required this.next,
      required this.previous,
      required final List<PokemonApiShortModel> results})
      : _results = results;

  factory _$PokemonApiResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonApiResponseModelImplFromJson(json);

  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonApiShortModel> _results;
  @override
  List<PokemonApiShortModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonApiResponseModel(next: $next, previous: $previous, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonApiResponseModel'))
      ..add(DiagnosticsProperty('next', next))
      ..add(DiagnosticsProperty('previous', previous))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonApiResponseModelImpl &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, next, previous,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of PokemonApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonApiResponseModelImplCopyWith<_$PokemonApiResponseModelImpl>
      get copyWith => __$$PokemonApiResponseModelImplCopyWithImpl<
          _$PokemonApiResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonApiResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonApiResponseModel implements PokemonApiResponseModel {
  const factory _PokemonApiResponseModel(
          {required final String? next,
          required final String? previous,
          required final List<PokemonApiShortModel> results}) =
      _$PokemonApiResponseModelImpl;

  factory _PokemonApiResponseModel.fromJson(Map<String, dynamic> json) =
      _$PokemonApiResponseModelImpl.fromJson;

  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonApiShortModel> get results;

  /// Create a copy of PokemonApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonApiResponseModelImplCopyWith<_$PokemonApiResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
