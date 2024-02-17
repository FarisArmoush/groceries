import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class ForgotPasswordHeaderText extends StatelessWidget {
  const ForgotPasswordHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.forgotPassword.forgotPassword,
      style: TextStyle(
        fontWeight: AppFontWeights.semiBold,
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
