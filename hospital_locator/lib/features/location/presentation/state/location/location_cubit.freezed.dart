// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _Initial initial({required String error, required LocationModel location}) {
    return _Initial(
      error: error,
      location: location,
    );
  }

  _Error error({required String error, required LocationModel location}) {
    return _Error(
      error: error,
      location: location,
    );
  }

  _Loading loading({required String error, required LocationModel location}) {
    return _Loading(
      error: error,
      location: location,
    );
  }

  _Loaded loaded({required String error, required LocationModel location}) {
    return _Loaded(
      error: error,
      location: location,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  String get error => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error, LocationModel location) initial,
    required TResult Function(String error, LocationModel location) error,
    required TResult Function(String error, LocationModel location) loading,
    required TResult Function(String error, LocationModel location) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error, LocationModel location)? initial,
    TResult Function(String error, LocationModel location)? error,
    TResult Function(String error, LocationModel location)? loading,
    TResult Function(String error, LocationModel location)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error, LocationModel location)? initial,
    TResult Function(String error, LocationModel location)? error,
    TResult Function(String error, LocationModel location)? loading,
    TResult Function(String error, LocationModel location)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call({String error, LocationModel location});

  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }

  @override
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $LocationStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({String error, LocationModel location});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? error = freezed,
    Object? location = freezed,
  }) {
    return _then(_Initial(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial({required this.error, required this.location});

  @override
  final String error;
  @override
  final LocationModel location;

  @override
  String toString() {
    return 'LocationState.initial(error: $error, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error, LocationModel location) initial,
    required TResult Function(String error, LocationModel location) error,
    required TResult Function(String error, LocationModel location) loading,
    required TResult Function(String error, LocationModel location) loaded,
  }) {
    return initial(this.error, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error, LocationModel location)? initial,
    TResult Function(String error, LocationModel location)? error,
    TResult Function(String error, LocationModel location)? loading,
    TResult Function(String error, LocationModel location)? loaded,
  }) {
    return initial?.call(this.error, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error, LocationModel location)? initial,
    TResult Function(String error, LocationModel location)? error,
    TResult Function(String error, LocationModel location)? loading,
    TResult Function(String error, LocationModel location)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this.error, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationState {
  factory _Initial({required String error, required LocationModel location}) =
      _$_Initial;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  LocationModel get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> implements $LocationStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({String error, LocationModel location});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
    Object? location = freezed,
  }) {
    return _then(_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  _$_Error({required this.error, required this.location});

  @override
  final String error;
  @override
  final LocationModel location;

  @override
  String toString() {
    return 'LocationState.error(error: $error, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error, LocationModel location) initial,
    required TResult Function(String error, LocationModel location) error,
    required TResult Function(String error, LocationModel location) loading,
    required TResult Function(String error, LocationModel location) loaded,
  }) {
    return error(this.error, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error, LocationModel location)? initial,
    TResult Function(String error, LocationModel location)? error,
    TResult Function(String error, LocationModel location)? loading,
    TResult Function(String error, LocationModel location)? loaded,
  }) {
    return error?.call(this.error, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error, LocationModel location)? initial,
    TResult Function(String error, LocationModel location)? error,
    TResult Function(String error, LocationModel location)? loading,
    TResult Function(String error, LocationModel location)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LocationState {
  factory _Error({required String error, required LocationModel location}) =
      _$_Error;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  LocationModel get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $LocationStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({String error, LocationModel location});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? error = freezed,
    Object? location = freezed,
  }) {
    return _then(_Loading(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  _$_Loading({required this.error, required this.location});

  @override
  final String error;
  @override
  final LocationModel location;

  @override
  String toString() {
    return 'LocationState.loading(error: $error, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error, LocationModel location) initial,
    required TResult Function(String error, LocationModel location) error,
    required TResult Function(String error, LocationModel location) loading,
    required TResult Function(String error, LocationModel location) loaded,
  }) {
    return loading(this.error, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error, LocationModel location)? initial,
    TResult Function(String error, LocationModel location)? error,
    TResult Function(String error, LocationModel location)? loading,
    TResult Function(String error, LocationModel location)? loaded,
  }) {
    return loading?.call(this.error, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error, LocationModel location)? initial,
    TResult Function(String error, LocationModel location)? error,
    TResult Function(String error, LocationModel location)? loading,
    TResult Function(String error, LocationModel location)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.error, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LocationState {
  factory _Loading({required String error, required LocationModel location}) =
      _$_Loading;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  LocationModel get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> implements $LocationStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({String error, LocationModel location});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? error = freezed,
    Object? location = freezed,
  }) {
    return _then(_Loaded(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  _$_Loaded({required this.error, required this.location});

  @override
  final String error;
  @override
  final LocationModel location;

  @override
  String toString() {
    return 'LocationState.loaded(error: $error, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error, LocationModel location) initial,
    required TResult Function(String error, LocationModel location) error,
    required TResult Function(String error, LocationModel location) loading,
    required TResult Function(String error, LocationModel location) loaded,
  }) {
    return loaded(this.error, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error, LocationModel location)? initial,
    TResult Function(String error, LocationModel location)? error,
    TResult Function(String error, LocationModel location)? loading,
    TResult Function(String error, LocationModel location)? loaded,
  }) {
    return loaded?.call(this.error, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error, LocationModel location)? initial,
    TResult Function(String error, LocationModel location)? error,
    TResult Function(String error, LocationModel location)? loading,
    TResult Function(String error, LocationModel location)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this.error, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements LocationState {
  factory _Loaded({required String error, required LocationModel location}) =
      _$_Loaded;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  LocationModel get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
