import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class AppTipText extends StatelessWidget {
  const AppTipText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.home.homeTip,
      style: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: context.theme.hintColor,
        fontSize: 14,
      ),
    );
  }
}
