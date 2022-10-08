import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/models.dart';

class BookWidget extends StatelessWidget {
  static const _cardRadius = 16.0;
  static const _positioned = 0.0;

  const BookWidget({
    required Book book,
    Key? key,
  })  : _book = book,
        super(key: key);

  final Book _book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Spacing.of_4),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_cardRadius),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(_cardRadius)),
          child: IntrinsicWidth(
            child: Stack(
              children: [
                ShoppingListCachedImage(
                  url: _book.details.images?.thumbnail,
                ),
                Positioned(
                  bottom: _positioned,
                  left: _positioned,
                  right: _positioned,
                  child: Visibility(
                    visible: _book.details.averageRating != null &&
                        _book.details.ratingsCount != null,
                    child: Container(
                      padding: const EdgeInsets.all(Spacing.of_1),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.purple, Colors.blue],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ShoppingListLabel(
                            _book.details.averageRating?.toString() ?? '',
                            size: LabelSize.big,
                          ),
                          ShoppingListLabel(
                            '(${_book.details.ratingsCount ?? ''})',
                            size: LabelSize.big,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
