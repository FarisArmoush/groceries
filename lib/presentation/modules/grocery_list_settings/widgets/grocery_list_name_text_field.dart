import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class GroceryListNameTextField extends StatelessWidget {
  const GroceryListNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      labelText: Translations.general.listName,
    );
  }
}
