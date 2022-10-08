import 'package:core/core.dart';
import 'package:dio/dio.dart';

import '../../models/models.dart';

class DioNetworkResponseMapper implements Mapper<Response, NetworkResponse> {
  @override
  NetworkResponse map(Response input) {
    return NetworkResponse();
  }
}
