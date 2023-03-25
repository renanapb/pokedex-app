import 'package:dio/dio.dart';

class NetworkService {
  final _dio = Dio(BaseOptions(connectTimeout: const Duration(seconds: 5)));

  Future<NetworkResponse> getUrl(String path) async {
    final dioResponse = await _dio.get(path);
    return NetworkResponse.fromDio(dioResponse);
  }

  Future<NetworkResponse> getUri(Uri uri) async {
    final dioResponse = await _dio.getUri(uri);
    return NetworkResponse.fromDio(dioResponse);
  }
}

class NetworkResponse {
  NetworkResponse({
    this.data,
    this.statusCode,
    this.statusMessage,
  });

  NetworkResponse.fromDio(Response dioResponse)
      : data = dioResponse.data,
        statusCode = dioResponse.statusCode,
        statusMessage = dioResponse.statusMessage;

  final dynamic data;
  final int? statusCode;
  final String? statusMessage;
}
