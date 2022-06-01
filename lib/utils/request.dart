import 'dart:io';
import 'package:dio/dio.dart';

class HttpRequest{
  static Dio? dio;
  static const int CONNECT_TIMEOUT = 5000;
  static const int RECEIVE_TIMEOUT = 5000;
  static const String apiUrl = 'http://127.0.0.1:4523/mock/1051133';

  // 单例模式
  static Dio getInstance(){
    if(dio==null){
      var options = BaseOptions(
          baseUrl: HttpRequest.apiUrl,
          connectTimeout: HttpRequest.CONNECT_TIMEOUT,
          receiveTimeout: HttpRequest.RECEIVE_TIMEOUT,
          headers: {
            'auth':'ly12345678'
          },
          responseType: ResponseType.json
      );
      dio = Dio(options);
      dio?.interceptors.add(ErrorInterceptor());
      dio?.interceptors.add(LogInterceptor(responseBody: true));
    }
    return dio!;
  }
  static Future<dynamic> get<T>(String api,[Map<String, dynamic>? params,Options? options]) async{
    Dio dio = getInstance();
    return await dio.get(api,queryParameters: params,options: options);
  }
  static Future<dynamic> post<T>(String api,[Map<String, dynamic>? params,Options? options]) async{
    Dio dio = getInstance();
    return await dio.post(api,queryParameters: params,options: options);
  }
}

class ErrorInterceptor extends Interceptor{
  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler errCb) async {
    if (err.error is SocketException) {

    }
    if (err.type == DioErrorType.other) {

    }
    return super.onError(err, errCb);
  }
}
class ResponseData<T> {
  late T? data;
  late int? code;
  late String? message;
  ResponseData({this.data,this.code,this.message});

  static bool checkState(Response response){
    Map<String,dynamic> data = response.data;
    return response.statusCode==200 && data['state']==200;
  }

  ResponseData.fromJson(Response response) {
    Map<String,dynamic> jsonData = response.data;
    data = jsonData["data"];
    code = jsonData["code"];
    message = jsonData["message"];
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['data'] = data;
    map['code'] = code;
    map['message'] = message;
    return map;
  }

}