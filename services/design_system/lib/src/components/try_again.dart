import 'package:flutter/material.dart';

import '../../design_system.dart';

class ShoppingListTryAgain extends StatelessWidget {
  const ShoppingListTryAgain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ShoppingListLabel(
          // It could be localized with internationalization
          'We got a error. Please try Again ...',
          size: LabelSize.titleBig,
        ),
        OutlinedButton(
          onPressed: () {},
          child: const ShoppingListLabel(
            // It could be localized with internationalization
            'Try Again',
            size: LabelSize.standard,
          ),
        )
      ],
    );
  }
}
