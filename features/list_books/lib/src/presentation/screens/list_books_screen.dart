import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';
import 'widgets/widgets.dart';

class ListBooksScreen extends StatelessWidget {
  const ListBooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListBooksCubit, ListBooksState>(
        builder: (context, state) {
      if (state is ListBooksLoadInProgress) {
        return const ShoppingListScaffold(
          body: ShoppingListLoading(),
        );
      }

      if (state is ListBooksLoadFailure) {
        return ShoppingListScaffold(
          body: ShoppingListTryAgain(
            onTryAgain: () => context.read<ListBooksCubit>().fetchBooks(),
          ),
        );
      }

      if (state is ListBooksLoadSuccess) {
        return ShoppingListScaffold(
          body: ListBooksWidget(books: state.books),
        );
      }

      return ShoppingListScaffold(
        body: Container(),
      );
    });
  }
}
