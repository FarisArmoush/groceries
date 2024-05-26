import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class YouDontHaveGroceryLists extends StatelessWidget {
  const YouDontHaveGroceryLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.illustrations.computer.svg(
          height: context.deviceHeight * 0.2,
        ),
        SizedBox(
          height: context.deviceHeight * 0.015,
        ),
        Text(
          Translations.home.youDontHaveGroceryLists,
          style: TextStyle(
            fontWeight: AppFontWeights.medium,
            fontSize: 16,
            color: context.theme.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.015,
        ),
        FilledButton.icon(
          onPressed: () => context.pushNamed(AppRoute.createList.named),
          icon: const Icon(CupertinoIcons.add),
          label: Text(Translations.home.createYourFirstList),
        ),
      ],
    );
  }
}
