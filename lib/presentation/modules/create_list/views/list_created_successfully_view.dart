import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class ListCreatedSuccessfullyView extends StatelessWidget {
  const ListCreatedSuccessfullyView({super.key});

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
              height: context.deviceHeight * 0.15,
            ),
            Assets.illustrations.celebrating.svg(
              height: context.deviceHeight * 0.35,
            ),
            Text(
              AppTranslations.createGroceryList.listCreatedSuccessfullyHeader,
              style: TextStyle(
                fontWeight: AppFontWeights.semiBold,
                color: context.theme.primaryColor,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            Text(
              AppTranslations.createGroceryList.listCreatedSuccessfullyBody,
              style: TextStyle(
                fontWeight: AppFontWeights.regular,
                color: context.theme.hintColor,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            FilledButton(
              onPressed: () {},
              child: Text(
                AppTranslations.createGroceryList.goToList,
              ),
            ),
            SizedBox(
              height: context.deviceHeight * 0.005,
            ),
            OutlinedButton(
              onPressed: () =>
                  context.pushReplacementNamed(AppNamedRoutes.root),
              child: Text(
                AppTranslations.createGroceryList.goHome,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
