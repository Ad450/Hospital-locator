import 'package:hospital_locator/core/di/core_injector.dart';
import 'package:hospital_locator/features/location/domain/di/location_injector.dart';

void configureDependencies() {
  coreInjector().setUp();
  locationInjector().setUp();
}
