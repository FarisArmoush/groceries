import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class RegisterBodyText extends StatelessWidget {
  const RegisterBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Translations.register.body,
      style: TextStyle(
        fontWeight: AppFontWeights.regular,
        color: context.theme.primaryColor,
        fontSize: 22,
      ),
    );
  }
}
