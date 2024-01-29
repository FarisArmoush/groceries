import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/widgets/other_options_text_button.dart';

class LoginOtherOptionsTextButton extends StatelessWidget {
  const LoginOtherOptionsTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SwitchAuthenticationOptionTextButton(
      upperText: AppTranslations.login.dontHaveAnAccount,
      lowerText: AppTranslations.login.registerNow,
      onTap: () => context.pushReplacementNamed(AppNamedRoutes.register),
    );
  }
}
