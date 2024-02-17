import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class ThemeHeaderText extends StatelessWidget {
  const ThemeHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.theme.themeHeader,
      style: TextStyle(
        fontWeight: AppFontWeights.medium,
        color: context.theme.primaryColor,
        fontSize: 12,
      ),
    );
  }
}
