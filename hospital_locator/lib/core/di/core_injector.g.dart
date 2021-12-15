// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$CoreInjector extends CoreInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory<DatabaseService<dynamic>>((c) => DatabaseServiceImpl())
      ..registerFactory<NetworkService>((c) => NetworkServiceImpl());
  }
}
