import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';

class SaveGroceryListChangesButton extends StatelessWidget {
  const SaveGroceryListChangesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pop(),
      child: Text(Translations.groceryListSettings.saveListChanges),
    );
  }
}
