import 'package:dio/dio.dart';
import 'package:hospital_locator/core/data/network/network_response_model.dart';
import 'package:hospital_locator/core/failures.dart';

// can replace  ApiFailure messages with generic api strings

// when request goes well in try block
NetworkResponse handleResponse(Response _response) {
  if (_response.statusCode.toString().startsWith("2")) {
    if ((_response.data as Map<String, dynamic>).containsKey("predictions")) {
      return NetworkResponse(
          data: _response.data as Map<String, dynamic>,
          error: ApiFailure(""),
          result: NetworkResult.SUCCESS);
    }

    return NetworkResponse(
        data: _response.data as Map<String, dynamic>,
        error: ApiFailure(""),
        result: NetworkResult.SUCCESS);
  }

  throw ApiFailure("something bad happened");
}

// to be used in catch bloc where the Dioerror is passed here

NetworkResponse handleErrorResponse(DioError error) {
  if (error.type == DioErrorType.connectTimeout ||
      error.type == DioErrorType.sendTimeout ||
      error.type == DioErrorType.receiveTimeout) {
    return NetworkResponse(
        data: {
          "message": "something bad happened",
          "error": "connetion time out"
        },
        result: NetworkResult.SERVER_TIMEOUT,
        error: ApiFailure("connection time out"));
  }

  if (error.type == DioErrorType.response) {
    if (error.response == null) {
      return NetworkResponse(
          data: {
            "message": "something bad happened",
            "error": "cnull response"
          },
          result: NetworkResult.BAD_REQUEST,
          error: ApiFailure("couldnot perform operation"));
    }

    return _switchStatus(error.response!);
  }

  if (error.type == DioErrorType.cancel) {
    return NetworkResponse(
        data: {"message": "something bad happened", "error": "cancelled"},
        result: NetworkResult.METHOD_DISALLOWED,
        error: ApiFailure("please try again"));
  }

  // this return will take of DioErrorType.other
  return NetworkResponse(data: {
    "message": "something bad happened",
    "error": "connetion time out"
  }, result: NetworkResult.FAILURE, error: ApiFailure("please try again"));
}

_switchStatus(Response _response) {
  switch (_response.statusCode) {
    case 400:
      return NetworkResponse(
          data: {
            "message": "something bad happened",
            "error": "connetion time out"
          },
          result: NetworkResult.FAILURE,
          error: ApiFailure("not authorised to carry this operation"));
    case 404:
      return NetworkResponse(data: {
        "message": "something bad happened",
        "error": "connetion time out"
      }, result: NetworkResult.NOT_FOUND, error: ApiFailure(" not foundx="));
    case 500:
      return NetworkResponse(data: {
        "message": "something bad happened",
        "error": "connetion time out"
      }, result: NetworkResult.SERVER_ERROR, error: ApiFailure("server error"));

    default:
      return NetworkResponse(data: {
        "message": "something bad happened",
        "error": "connetion time out"
      }, result: NetworkResult.FAILURE, error: ApiFailure("failure"));
  }
}
