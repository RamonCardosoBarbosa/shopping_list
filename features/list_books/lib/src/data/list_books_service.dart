abstract class ListBooksService {
  Future fetchBooks({
    int index = 0,
    String? query,
  });
}
