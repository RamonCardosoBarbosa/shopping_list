import 'book_details_response.dart';

class BookResponse {
  BookResponse({
    required this.id,
    required this.details,
  });

  final String id;
  final BookDetailsResponse details;

  factory BookResponse.fromJson(Map<String, dynamic> json) => BookResponse(
        id: json['id'],
        details: BookDetailsResponse.fromJson(json['volumeInfo']),
      );
}
