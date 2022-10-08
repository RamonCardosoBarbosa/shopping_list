import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';

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

      if (state is ListBooksLoadInProgress) {
        return const ShoppingListScaffold(
          body: ShoppingListLoading(),
        );
      }

      return ShoppingListScaffold(
        body: Container(),
      );
    });
  }
}
