// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$LocationInjector extends LocationInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<LocationRepository>(
          (c) => LocationRepositoryImpl(c<LocationRemoteDataSource>()))
      ..registerFactory<LocationRemoteDataSource>(
          (c) => LocationRemoteDataSourceImpl())
      ..registerSingleton((c) => GetSearchedLocation(c<LocationRepository>()))
      ..registerSingleton((c) => GetCurrentLocation(c<LocationRepository>()));
  }
}
