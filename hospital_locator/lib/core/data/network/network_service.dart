import 'package:dio/dio.dart';

abstract class NetworkService {
  Future<Response> postHttp(
      {required String url, required Map<String, dynamic> postData});
  Future<Response> getHttp(url);
  Future<void> delete({required url, required String id});
}
