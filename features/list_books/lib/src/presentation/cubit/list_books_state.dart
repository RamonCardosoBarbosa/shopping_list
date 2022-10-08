import 'package:equatable/equatable.dart';

import '../../domain/models/models.dart';

abstract class ListBooksState extends Equatable {
  const ListBooksState();

  @override
  List<Object?> get props => [];
}

class ListBooksInitial extends ListBooksState {
  const ListBooksInitial();
}

class ListBooksLoadInProgress extends ListBooksState {
  const ListBooksLoadInProgress();
}

class ListBooksLoadFailure extends ListBooksState {
  const ListBooksLoadFailure();
}

class ListBooksLoadSuccess extends ListBooksState {
  const ListBooksLoadSuccess({required this.books});

  final List<Book> books;

  @override
  List<Object?> get props => [books];
}

class ListBooksLoadEmptySuccess extends ListBooksState {
  const ListBooksLoadEmptySuccess();
}
