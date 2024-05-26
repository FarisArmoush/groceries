import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class WelcomeViewHeaderText extends StatelessWidget {
  const WelcomeViewHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Translations.welcome.header,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontWeight: AppFontWeights.bold,
        color: context.theme.primaryColor,
        fontSize: 30,
      ),
    );
  }
}
