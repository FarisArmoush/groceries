import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class DeleteAccountHeader extends StatelessWidget {
  const DeleteAccountHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.deleteAccountHeader,
      style: AppTextStyles.bold(
        context: context,
        color: Theme.of(context).primaryColorLight,
        fontSize: 28,
      ),
    );
  }
}
