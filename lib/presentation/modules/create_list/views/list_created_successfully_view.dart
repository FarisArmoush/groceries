import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class ListCreatedSuccessfullyView extends StatelessWidget {
  const ListCreatedSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.15,
            ),
            Assets.svg.illCelebrating.svg(
              height: context.deviceHeight * 0.35,
            ),
            Text(
              AppTranslations.listCreatedSuccessfullyHeader,
              style: TextStyle(
                fontFamily: AppFonts.semiBold(context),
                color: Theme.of(context).primaryColor,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            Text(
              AppTranslations.listCreatedSuccessfullyBody,
              style: TextStyle(
                fontFamily: AppFonts.regular(context),
                color: Theme.of(context).hintColor,
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
                AppTranslations.goToList,
              ),
            ),
            SizedBox(
              height: context.deviceHeight * 0.005,
            ),
            OutlinedButton(
              onPressed: () =>
                  context.pushReplacementNamed(AppNamedRoutes.root),
              child: Text(
                AppTranslations.goHome,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
