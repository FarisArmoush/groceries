import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.appName,
      style: TextStyle(
        fontFamily: AppFonts.black(context),
        color: Theme.of(context).primaryColorLight,
        fontSize: 32,
      ),
      textAlign: TextAlign.center,
    );
  }
}
