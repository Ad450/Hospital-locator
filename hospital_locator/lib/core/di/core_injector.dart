import 'package:hospital_locator/core/data/database/database_service.dart';
import 'package:hospital_locator/core/data/database/database_service_impl.dart';
import 'package:hospital_locator/core/data/network/network_service.dart';
import 'package:hospital_locator/core/data/network/network_service_impl.dart';
import 'package:kiwi/kiwi.dart';

part 'core_injector.g.dart';

abstract class CoreInjector {
  static late KiwiContainer _container;

  void setUp() {
    _container = KiwiContainer();

    _$CoreInjector()._configure();
  }

  @Register.factory(DatabaseService, from: DatabaseServiceImpl)
  @Register.factory(NetworkService, from: NetworkServiceImpl)
  void _configure();
}

CoreInjector coreInjector() => _$CoreInjector();
