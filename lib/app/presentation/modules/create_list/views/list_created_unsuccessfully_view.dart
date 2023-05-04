import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/config/routes/app_named_routes.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';
import 'package:groceries/gen/assets.gen.dart';

class ListCreatedUnsuccessfullyView extends StatelessWidget {
  const ListCreatedUnsuccessfullyView({Key? key}) : super(key: key);

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
            SvgPicture.asset(
              Assets.svg.illError,
            ),
            Text(
              AppTranslations.oops,
              style: AppTextStyles.poppinsSemiBold(
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
              style: AppTextStyles.poppinsRegular(
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
