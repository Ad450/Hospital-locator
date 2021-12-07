import 'package:dio/dio.dart';
import 'package:hospital_locator/core/data/network/handle_response.dart';
import 'package:hospital_locator/core/data/network/network_service.dart';

class NetworkServiceImpl implements NetworkService {
  late Dio _dio;

  NetworkServiceImpl() {
    _dio = Dio(BaseOptions(
      baseUrl: "",
      connectTimeout: 10000,
      contentType: "application/json",
    ));
  }

  @override
  Future<void> delete({required url, required String id}) async {
    try {
      await _dio.delete("$url/$id");
    } on DioError catch (e) {
      throw (handleErrorResponse(e));
    }
  }

  @override
  Future<Response> getHttp(url) async {
    try {
      final _response = await _dio.get(url);
      return handleResponse(_response);
    } on DioError catch (e) {
      return handleErrorResponse(e);
    }
  }

  @override
  Future<Response> postHttp(
      {required String url, required Map<String, dynamic> postData}) async {
    try {
      final _response = await _dio.post(url, data: postData);
      return handleResponse(_response);
    } on DioError catch (e) {
      return handleErrorResponse(e);
    }
  }
}
