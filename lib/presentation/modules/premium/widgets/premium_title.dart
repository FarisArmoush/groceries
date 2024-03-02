import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class PremiumTitle extends StatelessWidget {
  const PremiumTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.premium.title,
      style: TextStyle(
        color: context.theme.primaryColor,
        fontWeight: AppFontWeights.bold,
        fontSize: 24,
      ),
      textAlign: TextAlign.center,
    );
  }
}
