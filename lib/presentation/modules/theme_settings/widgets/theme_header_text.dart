import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

class ThemeHeaderText extends StatelessWidget {
  const ThemeHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.themeHeader,
      style: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: Theme.of(context).primaryColor,
        fontSize: 12,
      ),
    );
  }
}
