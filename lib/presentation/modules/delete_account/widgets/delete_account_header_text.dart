import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class DeleteAccountHeaderText extends StatelessWidget {
  const DeleteAccountHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Translations.deleteAccount.header,
      style: TextStyle(
        fontWeight: AppFontWeights.bold,
        color: context.theme.primaryColorLight,
        fontSize: 28,
      ),
    );
  }
}
