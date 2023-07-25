import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class CategoryBoxAddItemsButton extends StatelessWidget {
  const CategoryBoxAddItemsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(AppTranslations.addItems),
    ).symmetricPadding(
      horizontal: context.deviceWidth * 0.1,
    );
  }
}
