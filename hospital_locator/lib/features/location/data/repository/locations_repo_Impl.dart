import 'package:geolocator/geolocator.dart';
import 'package:hospital_locator/features/location/data/remote_sources/currentLocations.dart';
import 'package:hospital_locator/features/location/domain/repository/location_repo.dart';

class LocationsRepoImpl implements LocationsRepo{
  // no dependency injection in this usecase, just testing out functionalities
  LocationsRepoImpl._();
  factory LocationsRepoImpl ()=> LocationsRepoImpl._();
  @override
  Stream<Position>? getCurrentLocation() {
    return CurrentLocations.getCurrentLocation();
  }

}