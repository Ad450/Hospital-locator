import 'package:dartz/dartz.dart';
import 'package:hospital_locator/core/app_typedefs.dart';
import 'package:hospital_locator/core/failures.dart';
import 'package:hospital_locator/features/location/data/models/location_model/location_model.dart';
import 'package:hospital_locator/features/location/domain/repository/location_repo.dart';

class GetCurrentLocation implements Usecase<LocationModel, NoParam> {
  LocationRepository _locationRepository;
  GetCurrentLocation(this._locationRepository);

  @override
  Future<Either<UIError, LocationModel>> call(noParam) async {
    try {
      final _result = await _locationRepository.getCurrentLocation();
      return Right(_result);
    } on NetworkFailure catch (e) {
      return Left(UIError(e.message));
    }
  }
}
