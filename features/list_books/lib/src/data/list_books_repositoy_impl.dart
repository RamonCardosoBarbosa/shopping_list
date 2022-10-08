import '../domain/list_books_repository.dart';
import 'list_books_service.dart';

class ListBooksRepositoryImpl implements ListBooksRepository {
  const ListBooksRepositoryImpl({
    required ListBooksService remoteService,
  }) : _remoteService = remoteService;

  final ListBooksService _remoteService;
  @override
  Future fetchBooks({
    int index = 0,
    String? query,
  }) async {
    return await _remoteService.fetchBooks(index: index, query: query);
  }
}
