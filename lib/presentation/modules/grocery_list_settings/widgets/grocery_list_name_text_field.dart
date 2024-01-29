import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class GroceryListNameTextField extends StatelessWidget {
  const GroceryListNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      labelText: AppTranslations.general.listName,
    );
  }
}
