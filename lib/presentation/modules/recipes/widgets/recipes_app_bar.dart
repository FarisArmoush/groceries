import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/router/app_route.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';

class RecipesAppBar extends StatelessWidget {
  const RecipesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GroceriesAppBar(
      automaticallyImplyLeading: false,
      middle: Text(Translations.recipes.recipes),
      largeTitle: Text(Translations.recipes.recipes),
      trailing: IconButton(
        onPressed: () => context.pushNamed(AppRoute.createRecipe.named),
        icon: Assets.icons.plusCircle.svg(
          colorFilter: ColorFilter.mode(
            context.theme.primaryColorLight,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
