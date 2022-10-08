import 'package:network/network.dart';

import '../list_books_service.dart';
import 'models/list_book_response.dart';

class ListBooksRemoteService implements ListBooksService {
  static const _path = 'volumes';
  static const _indexQuery = 'startIndex';
  static const _qQuery = 'q';
  static const _maxResultsQuery = 'maxResults';
  static const _maxResultsValue = '30';

  const ListBooksRemoteService({
    required NetworkService networkService,
  }) : _networkService = networkService;

  final NetworkService _networkService;

  @override
  Future<ListBooksResponse?> fetchBooks({
    int index = 0,
    String? query,
  }) async {
    final response = await _networkService.get(_path, queryParameters: {
      _maxResultsQuery: _maxResultsValue,
      _indexQuery: index,
      _qQuery: query ?? 'development',
    });
    if (response.data != null) {
      return ListBooksResponse.fromJson(response.data!);
    }
    return null;
  }
}
