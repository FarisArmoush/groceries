import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        'Forgot your password?',
        style: AppTextStyles.poppinsMedium(
          color: Theme.of(context).primaryColorLight,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
      onPressed: () => context.pushNamed(AppNamedRoutes.forgotPassword),
    );
  }
}
