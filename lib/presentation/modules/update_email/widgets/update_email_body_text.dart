import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class UpdateEmailBodyText extends StatelessWidget {
  const UpdateEmailBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Translations.updateEmail.body,
      style: TextStyle(
        fontWeight: AppFontWeights.regular,
        color: context.theme.primaryColor,
        fontSize: 22,
      ),
    );
  }
}
