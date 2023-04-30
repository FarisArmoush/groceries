import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/localization/app_translations.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/modules/welcome/widgets/welcome_view_body_text.dart';
import 'package:groceries/app/presentation/modules/welcome/widgets/welcome_view_header_text.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      top: false,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.09,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: size.height * 0.15,
            ),
            const WelcomeViewHeaderText(),
            SizedBox(
              height: size.height * 0.065,
            ),
            const WelcomeViewBodyText(),
            SizedBox(
              height: size.height * 0.09,
            ),
            FilledButton(
              onPressed: () => context.pushReplacementNamed(
                AppNamedRoutes.register,
              ),
              child: Text(AppTranslations.register),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            OutlinedButton(
              onPressed: () => context.pushReplacementNamed(
                AppNamedRoutes.login,
              ),
              child: Text(AppTranslations.login),
            ),
          ],
        ),
      ),
    );
  }
}
