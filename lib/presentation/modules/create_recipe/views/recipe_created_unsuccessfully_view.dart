import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/router/app_route.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class RecipeCreatedUnsuccessfullyView extends StatelessWidget {
  const RecipeCreatedUnsuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 16,
          ),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.1,
            ),
            Assets.illustrations.error.svg(),
            Text(
              Translations.createRecipe.failedToCreateHeader,
              style: TextStyle(
                fontWeight: AppFontWeights.semiBold,
                color: context.theme.primaryColorLight,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            Text(
              Translations.createRecipe.failedToCreateBody,
              style: TextStyle(
                fontWeight: AppFontWeights.regular,
                color: context.theme.hintColor,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.05,
            ),
            FilledButton(
              onPressed: () => context.pushReplacementNamed(
                AppRoute.root.named,
              ),
              child: Text(Translations.createGroceryList.goHome),
            ),
            OutlinedButton(
              onPressed: () => context.pushReplacementNamed(
                AppRoute.createRecipe.named,
              ),
              child: Text(Translations.createGroceryList.tryAgain),
            ),
          ],
        ),
      ),
    );
  }
}
