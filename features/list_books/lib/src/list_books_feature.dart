import 'package:flutter/material.dart';
import 'package:network/network.dart';

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
    _networkService.get('https://www.googleapis.com/books/v1/volumes?q=ios&maxResults=20&startIndex=0');
    return const ListBooksScreen();
  }
}
