import 'package:equatable/equatable.dart';

import 'models.dart';

class BookDetails extends Equatable {
  const BookDetails({
    this.images,
    this.averageRating,
    this.ratingsCount,
  });

  final BookImages? images;
  final double? averageRating;
  final int? ratingsCount;

  @override
  List<Object?> get props => [images, averageRating, ratingsCount];
}
