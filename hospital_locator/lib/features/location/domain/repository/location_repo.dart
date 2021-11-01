import 'package:geolocator/geolocator.dart';
import 'package:hospital_locator/features/location/data/repository/locations_repo_Impl.dart';
import 'package:hospital_locator/features/location/domain/entities/location.dart';

abstract class LocationsRepo{
  factory LocationsRepo ()=> LocationsRepoImpl();
 Stream<Position>? getCurrentLocation();
}