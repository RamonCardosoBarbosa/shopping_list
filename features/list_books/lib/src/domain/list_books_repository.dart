abstract class ListBooksRepository {
  Future fetchBooks({
    int index = 0,
    String? query,
  });
}
