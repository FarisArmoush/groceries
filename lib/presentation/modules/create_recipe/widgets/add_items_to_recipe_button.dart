import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';

class AddItemsToRecipeButton extends StatelessWidget {
  const AddItemsToRecipeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.pushNamed(AppRoute.addItems.named),
      icon: Assets.icons.plus.svg(
        colorFilter: ColorFilter.mode(
          context.theme.colorScheme.secondary,
          BlendMode.srcIn,
        ),
      ),
      label: Text(Translations.createRecipe.addItemsToRecipe),
    );
  }
}
