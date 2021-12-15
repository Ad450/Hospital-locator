part of 'location_cubit.dart';

@freezed
abstract class LocationState with _$LocationState {
  factory LocationState.initial(
      {required String error, required LocationModel location}) = _Initial;
  factory LocationState.error(
      {required String error, required LocationModel location}) = _Error;
  factory LocationState.loading(
      {required String error, required LocationModel location}) = _Loading;
  factory LocationState.loaded(
      {required String error, required LocationModel location}) = _Loaded;
}
