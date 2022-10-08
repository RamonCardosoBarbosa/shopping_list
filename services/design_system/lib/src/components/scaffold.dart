import 'package:flutter/material.dart';

import '../spacing/spacing.dart';

class ShoppingListScaffold extends StatelessWidget {
  const ShoppingListScaffold({
    Key? key,
    required Widget body,
  })  : _body = body,
        super(key: key);

  final Widget _body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Spacing.of_4),
        child: _body,
      ),
    );
  }
}
