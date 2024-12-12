import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HttpClient {
  final dio = Dio();

  Future get(String path) async {
    try {
      final response = await dio.get(path);

      return response;
    } on DioException {
      debugPrint("Dio Error");
    } catch (e) {
      return e;
    }
  }
}
