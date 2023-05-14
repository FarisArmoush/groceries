import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class DeleteAccountBodyText extends StatelessWidget {
  const DeleteAccountBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.deleteAccountBody,
      style: AppTextStyles.poppinsRegular(
        color: Theme.of(context).primaryColor,
        fontSize: 18,
      ),
    );
  }
}