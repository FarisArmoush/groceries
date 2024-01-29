import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class YouDontHaveGroceryLists extends StatelessWidget {
  const YouDontHaveGroceryLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.svg.illComputer.svg(
          height: context.deviceHeight * 0.2,
        ),
        SizedBox(
          height: context.deviceHeight * 0.015,
        ),
        Text(
          AppTranslations.home.youDontHaveGroceryLists,
          style: TextStyle(
            fontFamily: AppFonts.medium(context),
            fontSize: 16,
            color: context.theme.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.015,
        ),
        FilledButton.icon(
          onPressed: () => context.pushNamed(AppNamedRoutes.createList),
          icon: const Icon(CupertinoIcons.add),
          label: Text(AppTranslations.home.createYourFirstList),
        ),
      ],
    );
  }
}
