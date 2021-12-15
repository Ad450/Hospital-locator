import 'package:hive_flutter/adapters.dart';
import 'package:hospital_locator/core/data/database/database_collection.dart';
import 'package:hospital_locator/core/data/database/database_service.dart';
import 'package:hospital_locator/core/failures.dart';
import 'package:hospital_locator/features/location/data/models/location_model/location_model.dart';

class DatabaseServiceImpl implements DatabaseService {
  @override
  Future<LocationModel> read(String? key, Collection collection) async {
    if (collection is Collection) {
      final _box = await _openBox(collection);
      final result = _box.get(key ?? "location-key");
      return result["data"];
    } else {
      throw DatabaseFailure("couldnot read");
    }
  }

  @override
  Future write(
      String? key, Collection collection, Map<String, dynamic> value) async {
    if (collection is Collection) {
      final _box = await _openBox(collection);
      _box.put(key ?? "location-key", <String, dynamic>{"data": value});
    } else {
      throw DatabaseFailure("coulnot insert $value into database");
    }
  }

  Future<void> delete(String? key, Collection collection) async {
    if (collection is Collection) {
      final _box = await _openBox(collection);
      _box.delete(key ?? "location-key");
    } else {
      throw DatabaseFailure("could not delete from database");
    }
  }

  String _getId(Collection collection) => collection.toString();

  Future<Box> _openBox<T>(Collection collection) async {
    late Box _box;
    String _boxName = _getId(collection);

    if (Hive.isBoxOpen(_boxName)) {
      _box = Hive.box<T>(_boxName);
      return _box;
    } else {
      try {
        _box = await Hive.openBox<T>(_boxName);
        return _box;
      } catch (_) {
        Hive.deleteBoxFromDisk(_boxName);
        _box = await Hive.openBox(_boxName);
        return _box;
      }
    }
  }
}
