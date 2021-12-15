import 'package:google_place/google_place.dart' hide Location;
import 'package:hospital_locator/core/failures.dart';
import 'package:hospital_locator/core/utilities/location_helper.dart';
import 'package:hospital_locator/features/location/data/models/location_model/location_model.dart';
import 'package:hospital_locator/features/location/data/models/predictions_model.dart/prediction_model.dart';
import 'package:location/location.dart';
import "package:flutter_dotenv/flutter_dotenv.dart";

abstract class LocationRemoteDataSource {
  Future<LocationModel> getCurrentLocation();
  Future<List<Prediction?>> getSearchedLocation(String query);
}

class LocationRemoteDataSourceImpl implements LocationRemoteDataSource {
  @override
  Future<LocationModel> getCurrentLocation() async {
    if (await hasLocationService()) {
      final _locationData = await Location.instance.getLocation();
      return LocationModel(
          lattitude: _locationData.latitude ?? 7.946527,
          longitude: _locationData.longitude ?? -1.023194);
    }

    throw ApiFailure("location service not enabled");
  }

  @override
  Future<List<Prediction?>> getSearchedLocation(String query) async {
    final _googlePlace = GooglePlace(env["apikey"]!);
    final _response = await _googlePlace.queryAutocomplete.get(query);
    if (_response != null) {
      _response.predictions!.map(
          (e) => Prediction(placeId: e.placeId, description: e.description));
    }
    return [];
  }
}
