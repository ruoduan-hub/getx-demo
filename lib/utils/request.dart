import 'package:dio/dio.dart';

Dio request() {
  Dio dio = Dio();
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      // 在请求发送前增加 token
      String token = 'token-xxxxxxx';
      options.headers['Token'] = 'Bearer $token';
      return handler.next(options);
    },
  ));
  // // 发送请求
  return dio;
}
