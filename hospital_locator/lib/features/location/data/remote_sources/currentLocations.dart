

import 'package:geolocator/geolocator.dart';


class CurrentLocations {
  // ask user for permission
  // permission denied, return a text saying permission denied , cannot fetch data
  // permission denied forever, a text saying cannot fetch data
  // permission granted, return a stream of locations

  
 static Stream<Position>? getCurrentLocation(){
   Stream<Position>? _positionStream;
    Geolocator.checkPermission().then((permissionState) {
      if(permissionState == LocationPermission.denied){
        return Future.error("error occured");
      }
      if(permissionState == LocationPermission.deniedForever){
        return Future.error("error occured");
      }

      _positionStream =  Geolocator.getPositionStream();
    }).onError((error, stackTrace) => Future.error(error!));

    return _positionStream;
  }
}
