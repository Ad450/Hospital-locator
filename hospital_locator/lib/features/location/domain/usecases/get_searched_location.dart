import 'package:dartz/dartz.dart';
import 'package:hospital_locator/core/app_typedefs.dart';
import 'package:hospital_locator/core/failures.dart';
import 'package:hospital_locator/features/location/domain/models/location_model.dart';
import 'package:hospital_locator/features/location/domain/repository/location_repo.dart';

class GetSearchedLocation
    implements Usecase<LocationModel, GetSearchedLocationParam> {
  LocationRepository _locationRepository;
  GetSearchedLocation(this._locationRepository);

  @override
  Future<Either<UIError, LocationModel>> call(param) async {
    try {
      final _result =
          await _locationRepository.getSearchedLocation(param.query);
      return Right(_result);
    } on NetworkFailure catch (e) {
      return Left(UIError(e.message));
    }
  }
}

class GetSearchedLocationParam {
  String query;
  GetSearchedLocationParam({required this.query});
}
