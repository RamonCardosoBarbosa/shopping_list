import 'dio/dio.dart';
import 'models/models.dart';

abstract class NetworkService {
  Future<NetworkResponse> get(
    String path, {
    Map<String, dynamic> queryParameters,
  });

  factory NetworkService.getClient({required String baseUrl}) {
    return DioService.getInstance(baseUrl: baseUrl);
  }
}
