// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'prediction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PredictionTearOff {
  const _$PredictionTearOff();

  _Prediction call({required String? placeId, String? description}) {
    return _Prediction(
      placeId: placeId,
      description: description,
    );
  }
}

/// @nodoc
const $Prediction = _$PredictionTearOff();

/// @nodoc
mixin _$Prediction {
  String? get placeId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PredictionCopyWith<Prediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionCopyWith<$Res> {
  factory $PredictionCopyWith(
          Prediction value, $Res Function(Prediction) then) =
      _$PredictionCopyWithImpl<$Res>;
  $Res call({String? placeId, String? description});
}

/// @nodoc
class _$PredictionCopyWithImpl<$Res> implements $PredictionCopyWith<$Res> {
  _$PredictionCopyWithImpl(this._value, this._then);

  final Prediction _value;
  // ignore: unused_field
  final $Res Function(Prediction) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PredictionCopyWith<$Res> implements $PredictionCopyWith<$Res> {
  factory _$PredictionCopyWith(
          _Prediction value, $Res Function(_Prediction) then) =
      __$PredictionCopyWithImpl<$Res>;
  @override
  $Res call({String? placeId, String? description});
}

/// @nodoc
class __$PredictionCopyWithImpl<$Res> extends _$PredictionCopyWithImpl<$Res>
    implements _$PredictionCopyWith<$Res> {
  __$PredictionCopyWithImpl(
      _Prediction _value, $Res Function(_Prediction) _then)
      : super(_value, (v) => _then(v as _Prediction));

  @override
  _Prediction get _value => super._value as _Prediction;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? description = freezed,
  }) {
    return _then(_Prediction(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Prediction implements _Prediction {
  _$_Prediction({required this.placeId, this.description});

  @override
  final String? placeId;
  @override
  final String? description;

  @override
  String toString() {
    return 'Prediction(placeId: $placeId, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Prediction &&
            (identical(other.placeId, placeId) ||
                const DeepCollectionEquality()
                    .equals(other.placeId, placeId)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(placeId) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$PredictionCopyWith<_Prediction> get copyWith =>
      __$PredictionCopyWithImpl<_Prediction>(this, _$identity);
}

abstract class _Prediction implements Prediction {
  factory _Prediction({required String? placeId, String? description}) =
      _$_Prediction;

  @override
  String? get placeId => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PredictionCopyWith<_Prediction> get copyWith =>
      throw _privateConstructorUsedError;
}
