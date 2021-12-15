import 'package:hospital_locator/core/utilities/error_helpers.dart';
import 'package:hospital_locator/features/location/data/data_sources/locations_remote_data_source.dart';
import 'package:hospital_locator/features/location/data/models/location_model/location_model.dart';
import 'package:hospital_locator/features/location/data/models/predictions_model.dart/prediction_model.dart';
import 'package:hospital_locator/features/location/domain/repository/location_repo.dart';

class LocationRepositoryImpl implements LocationRepository {
  LocationRemoteDataSource _locationRemoteDataSource;

  LocationRepositoryImpl(this._locationRemoteDataSource);

  @override
  Future<LocationModel> getCurrentLocation() {
    return guardedApiCall<LocationModel>(
        () => _locationRemoteDataSource.getCurrentLocation());
  }

  @override
  Future<List<Prediction>> getSearchedLocation(String query) {
    return guardedApiCall<List<Prediction>>(
        () => _locationRemoteDataSource.getSearchedLocation(query));
  }
}
