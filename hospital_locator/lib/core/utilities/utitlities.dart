import 'package:hospital_locator/core/failures.dart';

Future<T> guardedApiCall<T>(Function run, String? errorMessage) async {
  try {
    return await run() as T;
  } on ApiFailure catch (e) {
    throw NetworkFailures(e.message);
  } catch (_) {
    TODO: // proper string to be inserted here
    throw NetworkFailures("");
  }
}
