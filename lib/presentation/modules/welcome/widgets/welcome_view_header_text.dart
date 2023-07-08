import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class WelcomeViewHeaderText extends StatelessWidget {
  const WelcomeViewHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.welcomeHeader,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontFamily: AppFonts.bold(context),
        color: context.theme.primaryColor,
        fontSize: 30,
      ),
    );
  }
}
