import 'package:dio/dio.dart';

class API {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  API(this.dio);

  Future<Map<String, dynamic>> get(String endPoint) async {
    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
