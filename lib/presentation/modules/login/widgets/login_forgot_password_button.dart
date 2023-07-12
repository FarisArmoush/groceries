import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';

class LoginForgotPasswordButton extends StatelessWidget {
  const LoginForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    // A row is used to align the button to end side.
    return Row(
      children: [
        const Spacer(),
        TextButton(
          child: Text(
            AppTranslations.forgotPassword,
          ),
          onPressed: () => context.pushNamed(AppNamedRoutes.forgotPassword),
        ),
      ],
    );
  }
}
