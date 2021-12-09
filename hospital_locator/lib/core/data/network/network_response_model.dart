import 'package:hospital_locator/core/failures.dart';

class NetworkResponse {
  // data contains the actual data expected from the server

  Map<String, dynamic> data;

  // error
  Failure error;

  // optional headers of response
  Map<String, dynamic>? headers;

  NetworkResult result;

  NetworkResponse(
      {required this.data,
      required this.error,
      this.headers,
      required this.result});
}

enum NetworkResult {
  SUCCESS,
  FAILURE,
  NO_INTERNET_CONNECTION,
  SERVER_ERROR,
  BAD_REQUEST,
  UNAUTHORISED,
  FORBIDDEN,
  NO_SUCH_ENDPOINT,
  METHOD_DISALLOWED,
  SERVER_TIMEOUT,
  TOO_MANY_REQUESTS,
  NOT_IMPLEMENTED,
  NOT_FOUND
}
