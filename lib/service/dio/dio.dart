import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class AppDio {
  static Dio _dio = Dio();

  AppDio() {
    _dio = Dio(
      BaseOptions(
        followRedirects: false,
        maxRedirects: 0,
        validateStatus: (statusCode) {
          if (statusCode == null) {
            return false;
          }
          if (statusCode == 404) {
            return false;
          }
          if (statusCode == 302) {
            return false;
          }
          if (statusCode == 500) {
            return false;
          }
          if (statusCode == 422) {
            return false;
          } else {
            return statusCode >= 200 && statusCode < 300;
          }
        },
        connectTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      ),
    );
    _dio.interceptors.add(LogInterceptor(request: true, responseBody: true, requestBody: true));
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers["Accept"] = "application/json";
          return handler.next(options);
        },
        onResponse: (response, handler) {
          handler.next(response);
        },
        onError: (DioException e, handler) async {
          handler.next(e);
        },
      ),
    );
  }

  Dio get get => _dio;

  Map<String, dynamic> jsonToMap(String jsonString) {
    try {
      return jsonDecode(jsonString) as Map<String, dynamic>;
    } on FormatException catch (e) {
      debugPrint("Error parsing JSON: $e");
      return {};
    }
  }
}
