import 'package:hospital_locator/features/location/domain/entities/location.dart';

class LocationModel extends Location {
  LocationModel({required double lattitude, required double longitude})
      : super(lattitude, longitude);
}
