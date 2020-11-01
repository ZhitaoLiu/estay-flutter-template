
import 'package:dio/dio.dart';

void httpRequestLog(RequestOptions options) {
  print("\n================================= 请求数据开始 =================================");
  print("url = ${options.uri.toString()}");
  print("method = ${options.method.toString()}");
  print("params = ${options.queryParameters}");
  print("headers = ${options.headers}");
}


void httpResponseLog(Response response) {
  print("\n================================= 响应数据开始 =================================");
  print("statusCode = ${response.statusCode}");
  print("data = ${response.data}");
  print("\n================================= 响应数据结束 =================================");
}


void httpErrorLog(DioError e) {
  print("\n================================= 错误响应开始 =================================");
  print("type = ${e.type}");
  print("message = ${e.message}");
  print("error = ${e.error}");
  print("\n================================= 错误响应结束 =================================");
}