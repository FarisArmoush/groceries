import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class YouHaveNoRecipes extends StatelessWidget {
  const YouHaveNoRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.illustrations.eating.svg(
          height: context.deviceHeight * 0.35,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        Text(
          AppTranslations.recipes.emptyRecipesHeader,
          style: TextStyle(
            fontFamily: AppFonts.semiBold(context),
            color: context.theme.primaryColor,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          AppTranslations.recipes.emptyRecipesBody,
          style: TextStyle(
            fontWeight: AppFontWeights.light,
            color: context.theme.hintColor,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        FilledButton(
          onPressed: () {},
          child: Text(AppTranslations.recipes.createFirstRecipe),
        ),
      ],
    );
  }
}
