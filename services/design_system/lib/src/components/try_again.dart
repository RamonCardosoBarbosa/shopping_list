import 'package:flutter/material.dart';

import '../../design_system.dart';

class ShoppingListTryAgain extends StatelessWidget {
  const ShoppingListTryAgain({
    required VoidCallback onTryAgain,
    Key? key,
  })  : _onTryAgain = onTryAgain,
        super(key: key);

  final VoidCallback _onTryAgain;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ShoppingListLabel(
            // It could be localized with internationalization
            'We got a error. Please try Again ...',
            size: LabelSize.titleBig,
          ),
          const SizedBox(height: Spacing.of_4),
          OutlinedButton(
            onPressed: _onTryAgain,
            child: const ShoppingListLabel(
              // It could be localized with internationalization
              'Try Again',
              size: LabelSize.standard,
            ),
          )
        ],
      ),
    );
  }
}
