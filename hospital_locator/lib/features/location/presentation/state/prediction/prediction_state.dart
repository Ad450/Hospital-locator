part of 'prediction_cubit.dart';

@freezed
abstract class PredictionState with _$PredictionState {
  factory PredictionState.initial(
      {required String error,
      required List<Prediction?>? prediction}) = _Initial;
  factory PredictionState.error(
      {required String error, required List<Prediction?>? prediction}) = _Error;
  factory PredictionState.loading(
      {required String error,
      required List<Prediction?>? prediction}) = _Loading;
  factory PredictionState.loaded(
      {required String error,
      required List<Prediction?>? prediction}) = _Loaded;
}
