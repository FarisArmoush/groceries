import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/localization/app_translations.dart';

class DeleteAccountHeader extends StatelessWidget {
  const DeleteAccountHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.deleteAccountHeader,
      style: AppTextStyles.poppinsBold(
        color: Theme.of(context).primaryColorLight,
        fontSize: 28,
      ),
    );
  }
}
