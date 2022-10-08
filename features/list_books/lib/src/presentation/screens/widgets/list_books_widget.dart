import 'package:flutter/material.dart';

import '../../../domain/models/models.dart';
import 'book_widget.dart';

class ListBooksWidget extends StatelessWidget {
  const ListBooksWidget({
    required List<Book> books,
    Key? key,
  })  : _books = books,
        super(key: key);

  final List<Book> _books;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Wrap(
          children: _books.map((book) => BookWidget(book: book)).toList(),
        ),
      ),
    );
  }
}
