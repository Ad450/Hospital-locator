import 'package:dio/dio.dart';
import 'package:hospital_locator/core/failures.dart';

// initial request options given to all request comes back again
RequestOptions _requestOptions = RequestOptions(
  path: "",
  connectTimeout: 10000,
  contentType: "application/json",
);

// can replace  ApiFailure messages with generic api strings

// when request goes well in try block
Response handleResponse(Response _response) {
  if (_response.statusCode.toString().startsWith("2")) {
    if ((_response.data as Map<String, dynamic>).containsKey("data")) {
      return Response(requestOptions: _requestOptions, data: _response.data);
    }

    return Response(
        requestOptions: _requestOptions, data: {"data": _response.data});
  }

  throw ApiFailure("something bad happened");
}

// to be used in catch bloc where the Dioerror is passed here

Response handleErrorResponse(DioError error) {
  if (error.type == DioErrorType.connectTimeout ||
      error.type == DioErrorType.sendTimeout ||
      error.type == DioErrorType.receiveTimeout) {
    return Response(
        requestOptions: _requestOptions,
        data: {"error": ApiFailure("request time out")});
  }

  if (error.type == DioErrorType.response) {
    if (error.response == null) {
      return Response(requestOptions: _requestOptions, data: {
        "error": ApiFailure("request unsuccesfull, please try again")
      });
    }

    return _switchStatus(error.response!);
  }

  if (error.type == DioErrorType.cancel) {
    return Response(
        requestOptions: _requestOptions,
        data: {"error": ApiFailure("something bad happened")});
  }

  // this return will take of DioErrorType.other
  return Response(
      requestOptions: _requestOptions,
      data: {"error": ApiFailure("something bad happened")});
}

_switchStatus(Response _response) {
  switch (_response.statusCode) {
    case 400:
      return Response(
          requestOptions: _requestOptions,
          data: {"error": ApiFailure("you cannot make this request, ")});
    case 404:
      return Response(
          requestOptions: _requestOptions,
          data: {"error": ApiFailure("something bad happened, please retry")});
    case 500:
      return Response(
          requestOptions: _requestOptions,
          data: {"error": ApiFailure("something bad happened, please retry")});
  }
}
