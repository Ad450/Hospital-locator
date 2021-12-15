import 'package:hospital_locator/core/failures.dart';
import 'package:hospital_locator/core/platform/connectivity.dart';

Future<T> guardedApiCall<T>(Function run) async {
  InternetConnectivity.instance().init();
  try {
    return await (run() as T);
  } on ApiFailure catch (e) {
    throw NetworkFailure(e.message);
  } catch (_) {
    throw NetworkFailure("something bad happened");
  }
}

Future<T> guardedCacheAccess<T>(Function run) async {
  try {
    return await (run() as T);
  } on DatabaseFailure catch (e) {
    throw CacheFailure(e.message);
  } catch (_) {
    throw CacheFailure("cache access failure");
  }
}
