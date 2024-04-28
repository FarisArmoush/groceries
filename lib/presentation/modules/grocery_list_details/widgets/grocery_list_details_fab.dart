import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries_theme/app_theme.dart';

class GroceryListDetailsFab extends StatelessWidget {
  const GroceryListDetailsFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        context.pushNamed(AppRoute.addItems.named);
      },
      label: Text(Translations.addItems.addItems),
      icon: Assets.icons.plus.svg(
        colorFilter: const ColorFilter.mode(
          AppColors.white,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
