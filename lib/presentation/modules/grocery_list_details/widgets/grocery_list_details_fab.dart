import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class GroceryListDetailsFab extends StatelessWidget {
  const GroceryListDetailsFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        context.pushNamed(AppNamedRoutes.addItems);
      },
      label: Text(AppTranslations.addItems.addItems),
      icon: Assets.svg.icPlus.svg(
        colorFilter: const ColorFilter.mode(
          AppColors.white,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
