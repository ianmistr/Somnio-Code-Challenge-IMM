import 'package:dio/dio.dart' hide Response;

import '../../domain/entities/entities.dart';

class HttpClient {
  final dio = Dio();

  Future get(String path) async {
    try {
      final response = await dio.get(path);
      if (response.statusCode! > 202) {
        return Response(
            data: [],
            statusCode: response.statusCode!,
            message: response.statusMessage!);
      }
      return response;
    } on DioException catch (dioError) {
      Response(
          data: [],
          statusCode: dioError.response!.statusCode!,
          message: dioError.message!);
    } catch (e) {
      return Response(data: [], message: e.toString());
    }
  }
}
