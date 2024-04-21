import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RecipesAppBar extends StatelessWidget {
  const RecipesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GroceriesAppBar(
      automaticallyImplyLeading: false,
      middle: Text(Translations.recipes.recipes),
      largeTitle: Text(Translations.recipes.recipes),
      trailing: IconButton(
        onPressed: () => context.pushNamed(AppRoute.createRecipe.name),
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
