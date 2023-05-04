import 'package:flutter/material.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';

class DeleteAccountBodyText extends StatelessWidget {
  const DeleteAccountBodyText({Key? key}) : super(key: key);

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
