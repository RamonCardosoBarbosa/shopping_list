import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network/network.dart';

import '../../domain/list_books_repository.dart';
import 'list_books_state.dart';

class ListBooksCubit extends Cubit<ListBooksState> {
  ListBooksCubit({required ListBooksRepository repository})
      : _repository = repository,
        super(const ListBooksInitial());

  final ListBooksRepository _repository;

  Future<void> fetchBooks() async {
    try {
      emit(const ListBooksLoadFailure());
      await _repository.fetchBooks();
    } on NetworkException catch (_) {
      emit(const ListBooksLoadFailure());
    }
  }
}
