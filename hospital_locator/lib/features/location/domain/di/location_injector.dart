import 'package:hospital_locator/features/location/data/data_sources/locations_remote_data_source.dart';
import 'package:hospital_locator/features/location/data/repository/locations_repo_Impl.dart';
import 'package:hospital_locator/features/location/domain/repository/location_repo.dart';
import 'package:hospital_locator/features/location/domain/usecases/getCurrentLocation.dart';
import 'package:hospital_locator/features/location/domain/usecases/get_searched_location.dart';
import 'package:kiwi/kiwi.dart';
part 'location_injector.g.dart';

abstract class LocationInjector {
  static late KiwiContainer _kiwiContainer;
  static final resolve = _kiwiContainer.resolve();

  void setUp() {
    _kiwiContainer = KiwiContainer();

    _$LocationInjector()._configure();
  }

  @Register.factory(LocationRepository, from: LocationRepositoryImpl)
  @Register.factory(LocationRemoteDataSource,
      from: LocationRemoteDataSourceImpl)
  @Register.singleton(GetSearchedLocation)
  @Register.singleton(GetCurrentLocation)
  void _configure();
}

LocationInjector locationInjector() => _$LocationInjector();
