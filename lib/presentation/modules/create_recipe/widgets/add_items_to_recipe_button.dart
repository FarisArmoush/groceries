import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class AddItemsToRecipeButton extends StatelessWidget {
  const AddItemsToRecipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.pushNamed(AppRoute.addItems.name),
      icon: Assets.icons.plus.svg(
        colorFilter: ColorFilter.mode(
          context.theme.colorScheme.secondary,
          BlendMode.srcIn,
        ),
      ),
      label: Text(AppTranslations.createRecipe.addItemsToRecipe),
    );
  }
}
