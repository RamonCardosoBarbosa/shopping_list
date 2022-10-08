import 'models/models.dart';

abstract class ListBooksRepository {
  Future<List<Book>?> fetchBooks({
    int index = 0,
    String? query,
  });
}
