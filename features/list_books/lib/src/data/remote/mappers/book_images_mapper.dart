import 'package:core/core.dart';

import '../../../domain/models/models.dart';
import '../models/models.dart';

class BookImagesResponseMapper
    implements Mapper<BookImagesResponse, BookImages> {
  const BookImagesResponseMapper();

  @override
  BookImages map(BookImagesResponse input) {
    return BookImages(
      smallThumbnail: input.smallThumbnail,
      thumbnail: input.thumbnail,
    );
  }
}
