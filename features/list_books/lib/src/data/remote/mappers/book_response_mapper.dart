import 'package:core/core.dart';

import '../../../domain/models/models.dart';
import '../models/models.dart';

class BookResponseMapper implements Mapper<BookResponse, Book> {
  const BookResponseMapper({
    required Mapper<BookDetailsResponse, BookDetails> bookDetailsMapper,
  }) : _bookDetailsMapper = bookDetailsMapper;

  final Mapper<BookDetailsResponse, BookDetails> _bookDetailsMapper;

  @override
  Book map(BookResponse input) {
    return Book(
      id: input.id,
      details: _bookDetailsMapper.map(input.details),
    );
  }
}
