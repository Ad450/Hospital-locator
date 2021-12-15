import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

@freezed
abstract class LocationModel with _$LocationModel {
  factory LocationModel(
      {required double lattitude, required double longitude}) = _LocationModel;
}
