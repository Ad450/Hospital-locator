import 'package:hospital_locator/features/location/domain/models/location_model.dart';

abstract class LocationRepository {
  Future<LocationModel> getCurrentLocation();
  Future<LocationModel> getSearchedLocation(String query);
}
