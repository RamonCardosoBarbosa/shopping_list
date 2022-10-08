import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShoppingListCachedImage extends StatelessWidget {
  static const _errorWidget = Icon(Icons.image_not_supported);

  const ShoppingListCachedImage({
    Key? key,
    required String? url,
  })  : _url = url,
        super(key: key);

  final String? _url;

  @override
  Widget build(BuildContext context) {
    if (_url == null) {
      return _errorWidget;
    }
    return CachedNetworkImage(
      imageUrl: _url!,
      errorWidget: (_, __, ___) => _errorWidget,
    );
  }
}
