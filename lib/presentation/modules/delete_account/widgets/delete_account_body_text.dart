import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

class DeleteAccountBodyText extends StatelessWidget {
  const DeleteAccountBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.deleteAccountBody,
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: Theme.of(context).primaryColor,
        fontSize: 18,
      ),
    );
  }
}
