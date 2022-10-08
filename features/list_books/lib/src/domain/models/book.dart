import 'package:equatable/equatable.dart';

import 'book_details.dart';

class Book extends Equatable {
  const Book({
    required this.id,
    required this.details,
  });

  final String id;
  final BookDetails details;

  @override
  List<Object?> get props => [id, details];
}
