import 'models.dart';

class BookDetailsResponse {
  BookDetailsResponse({
    this.images,
    this.averageRating,
    this.ratingsCount,
  });

  final BookImagesResponse? images;
  final double? averageRating;
  final int? ratingsCount;

  factory BookDetailsResponse.fromJson(Map<String, dynamic> json) =>
      BookDetailsResponse(
        images: json['imageLinks'] != null
            ? BookImagesResponse.fromJson(json['imageLinks'])
            : null,
        averageRating: json['averageRating'] is num
            ? (json['averageRating'] as num).toDouble()
            : 0,
        ratingsCount: json['ratingsCount'],
      );
}
