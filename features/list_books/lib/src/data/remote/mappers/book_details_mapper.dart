import 'package:core/core.dart';

import '../../../domain/models/models.dart';
import '../models/models.dart';

class BookDetailsResponseMapper
    implements Mapper<BookDetailsResponse, BookDetails> {
  const BookDetailsResponseMapper({
    required Mapper<BookImagesResponse, BookImages> imagesMapper,
  }) : _imagesMapper = imagesMapper;

  final Mapper<BookImagesResponse, BookImages> _imagesMapper;

  @override
  BookDetails map(BookDetailsResponse input) {
    return BookDetails(
      averageRating: input.averageRating,
      ratingsCount: input.ratingsCount,
      images: input.images != null ? _imagesMapper.map(input.images!) : null,
    );
  }
}
