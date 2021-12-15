import 'package:hospital_locator/features/location/data/models/location_model/location_model.dart';
import 'package:hospital_locator/features/location/data/models/predictions_model.dart/prediction_model.dart';

abstract class LocationRepository {
  Future<LocationModel> getCurrentLocation();
  Future<List<Prediction>> getSearchedLocation(String query);
}
