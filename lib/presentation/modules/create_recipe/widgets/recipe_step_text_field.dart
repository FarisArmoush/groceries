import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/utils/extenstions/hard_coded_extension.dart';

class RecipeStepTextField extends StatelessWidget {
  const RecipeStepTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppTextField(
      labelText: 'Label'.hardCoded,
    );
  }
}
