import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class RegisterHeaderText extends StatelessWidget {
  const RegisterHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.register.registerHeader,
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
