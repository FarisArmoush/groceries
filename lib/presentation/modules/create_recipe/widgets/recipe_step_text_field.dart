import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class RecipeStepTextField extends StatelessWidget {
  const RecipeStepTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      labelText: Translations.createRecipe.stepHint,
    );
  }
}
