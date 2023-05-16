import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

class DeleteAccountHeader extends StatelessWidget {
  const DeleteAccountHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.deleteAccountHeader,
      style: TextStyle(
        fontFamily: AppFonts.bold(context),
        color: Theme.of(context).primaryColorLight,
        fontSize: 28,
      ),
    );
  }
}
