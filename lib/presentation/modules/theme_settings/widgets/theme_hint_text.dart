import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class ThemeHintText extends StatelessWidget {
  const ThemeHintText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Translations.theme.hint,
      style: TextStyle(
        fontWeight: AppFontWeights.light,
        color: context.theme.hintColor,
        fontSize: 12,
      ),
    );
  }
}
