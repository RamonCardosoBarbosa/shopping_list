import 'package:flutter/material.dart';

import 'src/foundation/routes.dart';

class ShoppingListApp extends StatelessWidget with Routes {
  ShoppingListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
