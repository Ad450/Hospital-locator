import 'package:hospital_locator/core/data/database/database_collection.dart';

abstract class DatabaseService<T> {
  Future<T> read(String? key, Collection collection);
  Future<T> write(
      String? key, Collection collection, Map<String, dynamic> value);
  Future<void> delete(String? key, Collection collection);
}
