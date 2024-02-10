import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class ListCreatedUnsuccessfullyView extends StatelessWidget {
  const ListCreatedUnsuccessfullyView({super.key});

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
              AppTranslations.createGroceryList.listCreatedUnsuccessfullyHeader,
              style: TextStyle(
                fontFamily: AppFonts.semiBold(context),
                color: context.theme.primaryColorLight,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            Text(
              AppTranslations.createGroceryList.listCreatedUnsuccessfullyBody,
              style: TextStyle(
                fontFamily: AppFonts.regular(context),
                color: context.theme.hintColor,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.05,
            ),
            FilledButton(
              onPressed: () =>
                  context.pushReplacementNamed(AppNamedRoutes.root),
              child: Text(
                AppTranslations.createGroceryList.goHome,
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                AppTranslations.createGroceryList.tryAgain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
