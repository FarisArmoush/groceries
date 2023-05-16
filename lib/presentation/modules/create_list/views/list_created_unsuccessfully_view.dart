import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class ListCreatedUnsuccessfullyView extends StatelessWidget {
  const ListCreatedUnsuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Assets.svg.illError.svg(),
            Text(
              AppTranslations.oops,
              style: TextStyle(
                fontFamily: AppFonts.semiBold(context),
                color: Theme.of(context).primaryColorLight,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              AppTranslations.somethingWentWrong,
              style: TextStyle(
                fontFamily: AppFonts.regular(context),
                color: Theme.of(context).hintColor,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            FilledButton(
              onPressed: () =>
                  context.pushReplacementNamed(AppNamedRoutes.root),
              child: Text(
                AppTranslations.goToHome,
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                AppTranslations.tryAgain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
