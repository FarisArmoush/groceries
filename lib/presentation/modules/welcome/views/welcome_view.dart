import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/welcome/widgets/welcome_view_body_text.dart';
import 'package:groceries/presentation/modules/welcome/widgets/welcome_view_header_text.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: context.deviceWidth * 0.09,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.15,
            ),
            const WelcomeViewHeaderText(),
            SizedBox(
              height: context.deviceHeight * 0.065,
            ),
            const WelcomeViewBodyText(),
            SizedBox(
              height: context.deviceHeight * 0.09,
            ),
            _navigateToRegisterButton(context),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            _navigateToLoginButton(context),
          ],
        ),
      ),
    );
  }

  UpFadeInAnimation _navigateToLoginButton(BuildContext context) {
    return UpFadeInAnimation(
      duration: 1000.milliseconds,
      child: OutlinedButton(
        child: Text(AppTranslations.login),
        onPressed: () => context.pushReplacementNamed(AppNamedRoutes.login),
      ),
    );
  }

  UpFadeInAnimation _navigateToRegisterButton(BuildContext context) {
    return UpFadeInAnimation(
      child: FilledButton(
        child: Text(AppTranslations.register),
        onPressed: () => context.pushReplacementNamed(AppNamedRoutes.register),
      ),
    );
  }
}
