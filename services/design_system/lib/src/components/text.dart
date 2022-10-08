import 'package:flutter/material.dart';

enum TitleSize { standard, big }

extension TitleSizeExtension on TitleSize {
  static const double _standard = 24.0;
  static const double _big = 32.0;

  TextStyle? value(BuildContext context) {
    switch (this) {
      case TitleSize.big:
        return Theme.of(context).textTheme.titleLarge;
      default:
        return Theme.of(context).textTheme.titleLarge;
    }
  }
}

class ShoppingListTitle extends StatelessWidget {
  const ShoppingListTitle(
    String text, {
    TitleSize size = TitleSize.standard,
    TextAlign textAlign = TextAlign.left,
    Key? key,
  })  : _text = text,
        _size = size,
        _textAlign = textAlign,
        super(key: key);

  final String _text;
  final TitleSize _size;
  final TextAlign _textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      textAlign: _textAlign,
      style: _size.value(context),
    );
  }
}
