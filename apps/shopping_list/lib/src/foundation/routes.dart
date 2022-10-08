import 'package:design_system/design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:list_books/list_books.dart';
import 'package:network/network.dart';

import 'service_locator.dart';

mixin Routes {
  @protected
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return FutureBuilder(
              future: ServiceLocator.instance.allReady(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  context.go('/listBooks');
                }

                return ShoppingListScaffold(
                  body: Center(
                    child: ShoppingListTitle(
                      'SPLASH SCREEN',
                      size: TitleSize.big,
                    ),
                  ),
                );
              });
        },
      ),
      GoRoute(
        path: '/listBooks',
        builder: (context, state) {
          return ListBooksFeature(
            networkService: ServiceLocator.instance<NetworkService>(),
          );
        },
      ),
    ],
  );
}
