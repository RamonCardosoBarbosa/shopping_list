import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:network/src/models/network_response.dart';
import 'package:network/src/network_service.dart';

import 'dio.dart';
import 'exceptions/dio_service_exception.dart';

class DioService implements NetworkService {
  const DioService._({
    required Dio dio,
    required Mapper<Response, NetworkResponse> responseMapper,
  })  : _dio = dio,
        _responseMapper = responseMapper;

  factory DioService.getInstance() {
    return DioService._(
      dio: Dio(),
      responseMapper: DioNetworkResponseMapper(),
    );
  }

  final Dio _dio;
  final Mapper<Response, NetworkResponse> _responseMapper;

  @override
  Future<NetworkResponse> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return _responseMapper.map(response);
    } on DioError catch (_) {
      throw DioServiceException();
    }
  }
}
