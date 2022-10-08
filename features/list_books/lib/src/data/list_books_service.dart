import 'remote/models/models.dart';

abstract class ListBooksService {
  Future<ListBooksResponse?> fetchBooks({
    int index = 0,
    String? query,
  });
}
