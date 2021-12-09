import 'package:hospital_locator/core/data/network/network_response_model.dart';

abstract class NetworkService {
  Future<NetworkResponse> postHttp(
      {required String url, required Map<String, dynamic> postData});
  Future<NetworkResponse> getHttp(url);
  Future<void> delete({required url, required String id});
}
