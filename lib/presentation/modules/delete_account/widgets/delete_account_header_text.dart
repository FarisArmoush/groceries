import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class DeleteAccountHeaderText extends StatelessWidget {
  const DeleteAccountHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.deleteAccount.deleteAccountHeader,
      style: TextStyle(
        fontFamily: AppFonts.bold(context),
        color: context.theme.primaryColorLight,
        fontSize: 28,
      ),
    );
  }
}
