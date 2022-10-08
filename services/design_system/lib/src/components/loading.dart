import 'package:flutter/material.dart';

class ShoppingListLoading extends StatelessWidget {
  static const _width = 5.0;
  const ShoppingListLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: _width,
      ),
    );
  }
}
