import 'package:network/src/models/models.dart';

import 'dio/dio.dart';

abstract class NetworkService {
  Future<NetworkResponse> get(
    String path, {
    Map<String, dynamic> queryParameters,
  });

  factory NetworkService.getClient({required String baseUrl}) {
    return DioService.getInstance(baseUrl: baseUrl);
  }
}
