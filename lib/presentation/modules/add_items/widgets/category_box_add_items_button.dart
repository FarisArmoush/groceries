import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';

class CategoryBoxAddItemsButton extends StatelessWidget {
  const CategoryBoxAddItemsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(AppTranslations.addItems),
    );
  }
}
