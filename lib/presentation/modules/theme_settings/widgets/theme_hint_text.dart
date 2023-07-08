import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class ThemeHintText extends StatelessWidget {
  const ThemeHintText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.themeHint,
      style: TextStyle(
        fontFamily: AppFonts.light(context),
        color: context.theme.hintColor,
        fontSize: 12,
      ),
    );
  }
}
