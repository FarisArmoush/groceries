import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_route.dart';

class LoginForgotPasswordButton extends StatelessWidget {
  const LoginForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        TextButton(
          child: Text(
            AppTranslations.forgotPassword.header,
          ),
          onPressed: () => context.pushNamed(AppRoute.forgotPassword.name),
        ),
      ],
    );
  }
}
