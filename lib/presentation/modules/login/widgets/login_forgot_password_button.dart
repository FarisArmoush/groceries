import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';

class LoginForgotPasswordButton extends StatelessWidget {
  const LoginForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      child: Row(
        children: [
          const Spacer(),
          TextButton(
            child: Text(
              AppTranslations.forgotPassword,
            ),
            onPressed: () => context.pushNamed(AppNamedRoutes.forgotPassword),
          ),
        ],
      ),
    );
  }
}
