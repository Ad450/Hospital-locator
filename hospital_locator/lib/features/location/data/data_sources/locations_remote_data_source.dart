import 'package:google_place/google_place.dart' hide Location;
import 'package:hospital_locator/core/data/network/network_response_model.dart';
import 'package:hospital_locator/core/data/network/network_service.dart';
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
  NetworkService _networkService;
  LocationRemoteDataSourceImpl(this._networkService);

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
    //   final _googlePlace = GooglePlace("AIzaSyCc_XTCz8CDZBYm78UMOCavIQpBCCFp7ls");

    //   final _response =
    //       await _googlePlace.search.getFindPlace(query, InputType.TextQuery);

    //   print(_response);
    //   if (_response != null) {
    //     if (_response.candidates != null || _response.candidates!.length > 0) {
    //       print(_response.candidates);
    //       _response.candidates!
    //           .map((e) => Prediction(placeId: e.placeId, description: e.name));
    //     }
    //   }
    //   throw ApiFailure("could not fetch predicitions");
    // }

    final _response = await _networkService.getHttp(
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=AIzaSyCc_XTCz8CDZBYm78UMOCavIQpBCCFp7ls");

    if (_response.data.containsKey("error_message")) {
      throw ApiFailure(_response.data["error_message"]);
    }

    return _response.data["predictions"]
        .map((prediction) => Prediction(
            placeId: prediction["place_id"],
            description: prediction["description"]))
        .toList();
  }
}
