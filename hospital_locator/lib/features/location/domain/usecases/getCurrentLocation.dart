import 'package:geolocator/geolocator.dart';
import 'package:hospital_locator/features/location/data/repository/locations_repo_Impl.dart';
import 'package:hospital_locator/features/location/domain/entities/location.dart';
import 'package:hospital_locator/features/location/domain/repository/location_repo.dart';

class GetCurrentLocation {
  LocationsRepo locationsRepo = LocationsRepoImpl();

  Stream<Position>? getCurrentLocation() {
    return locationsRepo.getCurrentLocation();
  }
}
