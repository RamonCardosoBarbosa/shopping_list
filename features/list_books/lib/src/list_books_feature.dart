import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network/network.dart';

import 'data/list_books_repositoy_impl.dart';
import 'data/remote/list_books_remote_service.dart';
import 'presentation/cubit/cubit.dart';
import 'presentation/presentation.dart';

class ListBooksFeature extends StatelessWidget {
  const ListBooksFeature({
    required NetworkService networkService,
    Key? key,
  })  : _networkService = networkService,
        super(key: key);

  final NetworkService _networkService;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ListBooksCubit>(
      create: (context) => ListBooksCubit(
        repository: ListBooksRepositoryImpl(
          remoteService:
              ListBooksRemoteService(networkService: _networkService),
        ),
      )..fetchBooks(),
      child: const ListBooksScreen(),
    );
  }
}
