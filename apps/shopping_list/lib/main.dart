import 'package:flutter/material.dart';

import 'shopping_list_app.dart';
import 'src/foundation/service_locator.dart';

void main() {
  ServiceLocator.setup();

  runApp(ShoppingListApp());
}
