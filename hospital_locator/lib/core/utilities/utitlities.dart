import 'package:hospital_locator/core/failures.dart';

Future<T> guardedApiCall<T>(Function run, String? errorMessage) async {
  try {
    return await run() as T;
  } on ApiFailure catch (e) {
    throw NetworkFailures(e.message);
  } catch (_) {
    TODO: // proper string to be inserted here
    throw NetworkFailures("something bad happened");
  }
}

guardedCache<T>(Function run, String? message) async {
  try {
    return await run() as T;
  } on DatabaseFailure catch (e) {
    throw CacheFailure(e.message);
  } catch (_) {
    throw CacheFailure("something bad happened. Couldnot cache ");
  }
}
