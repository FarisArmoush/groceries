import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class PremiumDescription extends StatelessWidget {
  const PremiumDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Translations.premium.description,
      style: TextStyle(
        color: context.theme.hintColor,
        fontWeight: AppFontWeights.regular,
        fontSize: 14,
      ),
      textAlign: TextAlign.center,
    );
  }
}
