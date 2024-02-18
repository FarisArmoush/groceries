import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class LoginBodyText extends StatelessWidget {
  const LoginBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.login.loginBody,
      style: TextStyle(
        fontWeight: AppFontWeights.regular,
        color: context.theme.primaryColor,
        fontSize: 22,
      ),
    );
  }
}
