import 'package:flutter/material.dart';

enum LabelSize {
  standard,
  big,
  titleStandard,
  titleBig,
}

extension LabelSizeExtension on LabelSize {
  TextStyle? value(BuildContext context) {
    switch (this) {
      case LabelSize.big:
        return Theme.of(context).textTheme.labelLarge;
      case LabelSize.titleBig:
        return Theme.of(context).textTheme.titleLarge;
      case LabelSize.titleStandard:
        return Theme.of(context).textTheme.titleMedium;
      default:
        return Theme.of(context).textTheme.labelMedium;
    }
  }
}

class ShoppingListLabel extends StatelessWidget {
  const ShoppingListLabel(
    String text, {
    LabelSize size = LabelSize.standard,
    Key? key,
  })  : _text = text,
        _size = size,
        super(key: key);

  final String _text;
  final LabelSize _size;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      _text,
      style: _size.value(context),
    );
  }
}
