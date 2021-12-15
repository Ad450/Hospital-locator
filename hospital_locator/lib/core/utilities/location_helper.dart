// checks whether locations service is enabled
// checks whether location is permission is granted

import 'package:location/location.dart';

Future<bool> hasLocationService() async {
  bool granted = false;
  final _serviceEnabled = await Location.instance.serviceEnabled();
  if (!_serviceEnabled) {
    final _grantService = await Location.instance.requestService();
    if (!_grantService) {
      return granted;
    }
  }

  final _permissions = await Location.instance.hasPermission();
  if (_permissions != PermissionStatus.granted ||
      _permissions != PermissionStatus.grantedLimited) {
    final _request = await Location.instance.requestPermission();
    if (_request == PermissionStatus.granted ||
        _request == PermissionStatus.grantedLimited) {
      granted = true;
      return granted;
    }
  }
  return true;
}
