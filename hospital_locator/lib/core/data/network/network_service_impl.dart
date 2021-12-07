import 'package:dio/dio.dart';
import 'package:hospital_locator/core/data/network/handle_response.dart';
import 'package:hospital_locator/core/data/network/network_service.dart';
import 'package:hospital_locator/core/failures.dart';

class NetworkServiceImpl implements NetworkService{
  late Dio _dio;

  NetworkServiceImpl(){
    _dio = Dio(
      BaseOptions(
        baseUrl: "",
        connectTimeout: 10000,
        contentType: "application/json",

      )
    );
  }

  @override
  Future delete({required url, required String id}) async{
    try{
        final _response = await _dio.delete("$url/$id");
        return handleResponse(_response);
    }on DioError catch(e){
      return handleErrorResponse(e);
    }
  }

  @override
  Future getHttp(url) {
    // TODO: implement getHttp
    throw UnimplementedError();
  }

  @override
  Future postHttp({required String url, required Map<String, dynamic> postData}) {
    // TODO: implement postHttp
    throw UnimplementedError();
  }

}