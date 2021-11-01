import 'package:flutter/cupertino.dart';
import 'package:hospital_locator/features/location/domain/entities/location.dart';
import 'package:hospital_locator/features/location/domain/usecases/getCurrentLocation.dart';


class ApplicationBloc with ChangeNotifier {
   GetCurrentLocation _getCurrentLocation = GetCurrentLocation();
  late Location location;

  ApplicationBloc() {
    getCurrentLocation();
  }

  getCurrentLocation() async {
    location = await _getCurrentLocation.getCurrentLocation();
    notifyListeners();
  }
}
