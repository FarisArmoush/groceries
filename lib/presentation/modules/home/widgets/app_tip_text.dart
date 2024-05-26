import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class AppTipText extends StatelessWidget {
  const AppTipText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Translations.home.homeTip,
      style: TextStyle(
        fontWeight: AppFontWeights.medium,
        color: context.theme.hintColor,
        fontSize: 14,
      ),
    );
  }
}
