// ignore_for_file: unnecessary_lambdas

import 'book_response.dart';

class ListBooksResponse {
  ListBooksResponse({
    this.totalBooks,
    this.books,
  });

  final int? totalBooks;
  final List<BookResponse>? books;

  factory ListBooksResponse.fromJson(Map<String, dynamic> json) =>
      ListBooksResponse(
        totalBooks: json['totalItems'],
        books: json['items'] != null && json['items'] is List
            ? (json['items'] as List)
                .map((item) => BookResponse.fromJson(item))
                .toList()
            : null,
      );
}
