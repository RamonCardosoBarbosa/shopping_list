import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../models/network_response.dart';
import '../network_service.dart';
import 'dio.dart';

class DioService implements NetworkService {
  const DioService._({
    required Dio dio,
    required Mapper<Response, NetworkResponse> responseMapper,
  })  : _dio = dio,
        _responseMapper = responseMapper;

  factory DioService.getInstance({
    required String baseUrl,
  }) {
    final dio = Dio(BaseOptions(baseUrl: baseUrl));
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
    return DioService._(
      dio: dio,
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
