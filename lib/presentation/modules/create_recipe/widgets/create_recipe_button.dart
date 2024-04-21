import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class CreateRecipeButton extends StatelessWidget {
  const CreateRecipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => context.pushReplacementNamed(
        AppRoute.recipeCreatedUnsuccessfully.name,
      ),
      child: Text(Translations.createRecipe.createRecipe),
    ).bottomButtonSpacing();
  }
}
