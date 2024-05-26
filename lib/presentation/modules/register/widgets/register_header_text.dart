import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class RegisterHeaderText extends StatelessWidget {
  const RegisterHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Translations.register.header,
      style: TextStyle(
        fontWeight: AppFontWeights.semiBold,
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
