import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class WelcomeViewHeaderText extends StatelessWidget {
  const WelcomeViewHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.welcome.welcomeHeader,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontWeight: AppFontWeights.bold,
        color: context.theme.primaryColor,
        fontSize: 30,
      ),
    );
  }
}
