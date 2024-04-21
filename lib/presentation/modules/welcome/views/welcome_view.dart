import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/modules/welcome/widgets/welcome_view_body_text.dart';
import 'package:groceries/presentation/modules/welcome/widgets/welcome_view_header_text.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsetsDirectional.all(
            context.deviceWidth * 0.09,
          ),
          children: [
            const WelcomeViewHeaderText(),
            SizedBox(
              height: context.deviceHeight * 0.065,
            ),
            const WelcomeViewBodyText(),
            SizedBox(
              height: context.deviceHeight * 0.09,
            ),
            FilledButton(
              onPressed: () => context.pushReplacementNamed(
                AppRoute.register.name,
              ),
              child: Text(Translations.register.register),
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            OutlinedButton(
              onPressed: () => context.pushReplacementNamed(
                AppRoute.login.name,
              ),
              child: Text(Translations.login.login),
            ),
          ],
        ),
      ),
    );
  }
}
