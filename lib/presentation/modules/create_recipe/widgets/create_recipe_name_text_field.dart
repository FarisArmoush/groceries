import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class CreateRecipeNameTextField extends StatelessWidget {
  const CreateRecipeNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      labelText: AppTranslations.createRecipe.recipeName,
    );
  }
}
