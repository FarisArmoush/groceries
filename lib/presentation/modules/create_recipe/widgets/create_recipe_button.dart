import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/extensions/widgets_as_extensions.dart';
import 'package:groceries/presentation/router/app_route.dart';

class CreateRecipeButton extends StatelessWidget {
  const CreateRecipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => context.pushReplacementNamed(
        AppRoute.recipeCreatedUnsuccessfully.named,
      ),
      child: Text(Translations.createRecipe.createRecipe),
    ).bottomButtonSpacing();
  }
}
