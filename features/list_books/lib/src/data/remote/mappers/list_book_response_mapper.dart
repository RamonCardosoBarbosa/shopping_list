import 'package:core/core.dart';

import '../../../domain/models/models.dart';
import '../models/models.dart';

class ListBooksResponseMapper
    implements Mapper<ListBooksResponse, List<Book>?> {
  const ListBooksResponseMapper({
    required Mapper<BookResponse, Book> bookMapper,
  }) : _bookMapper = bookMapper;

  final Mapper<BookResponse, Book> _bookMapper;

  @override
  List<Book>? map(ListBooksResponse input) {
    return input.books?.map(_bookMapper.map).toList();
  }
}
