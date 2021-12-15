import 'package:freezed_annotation/freezed_annotation.dart';

part 'prediction_model.freezed.dart';

@freezed
abstract class Prediction with _$Prediction {
  factory Prediction({required String? placeId, String? description}) =
      _Prediction;
}
