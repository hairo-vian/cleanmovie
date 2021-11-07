import 'package:cleanmovie/contracts/general.dart';
import 'package:dio/dio.dart';

class BaseDio {
  Dio mDio() {
    final Dio dio = Dio();
    const baseUrl =
        String.fromEnvironment(General.BASE_URL, defaultValue: "null");
    dio.options = BaseOptions(
        receiveDataWhenStatusError: true,
        receiveTimeout: 10 * 1000,
        connectTimeout: 10 * 1000,
        sendTimeout: 10 * 1000,
        baseUrl: baseUrl,
        headers: {
          //Taro sini kalo ada header
          'Authorization': "contoh"
        });

    dio.interceptors.add(LogInterceptor(
      responseBody: true,
      requestHeader: true,
      requestBody: true,
    ));

    return dio;
  }
}
