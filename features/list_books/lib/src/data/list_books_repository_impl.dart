import 'package:core/core.dart';

import '../domain/list_books_repository.dart';
import '../domain/models/models.dart';
import 'list_books_service.dart';
import 'remote/models/models.dart';

class ListBooksRepositoryImpl implements ListBooksRepository {
  const ListBooksRepositoryImpl({
    required ListBooksService remoteService,
    required Mapper<ListBooksResponse, List<Book>?> booksMapper,
  })  : _remoteService = remoteService,
        _booksMapper = booksMapper;

  final ListBooksService _remoteService;
  final Mapper<ListBooksResponse, List<Book>?> _booksMapper;
  @override
  Future<List<Book>?> fetchBooks({
    int index = 0,
    String? query,
  }) async {
    final response =
        await _remoteService.fetchBooks(index: index, query: query);
    return response != null ? _booksMapper.map(response) : null;
  }
}
