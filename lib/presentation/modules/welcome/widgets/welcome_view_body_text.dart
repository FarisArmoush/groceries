import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class WelcomeViewBodyText extends StatelessWidget {
  const WelcomeViewBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.welcome.welcomeBody,
      style: TextStyle(
        fontWeight: AppFontWeights.regular,
        color: context.theme.primaryColor.withOpacity(0.9),
        fontSize: 20,
      ),
      textAlign: TextAlign.start,
    );
  }
}
