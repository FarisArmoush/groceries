import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class ForgotPasswordBodyText extends StatelessWidget {
  const ForgotPasswordBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.forgotPassword.forgotPasswordBody,
      style: TextStyle(
        fontWeight: AppFontWeights.regular,
        color: context.theme.primaryColor,
        fontSize: 18,
      ),
    );
  }
}
