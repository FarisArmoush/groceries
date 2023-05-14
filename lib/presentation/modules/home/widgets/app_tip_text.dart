import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class AppTipText extends StatelessWidget {
  const AppTipText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.homeTip,
      style: AppTextStyles.poppinsMedium(
        color: Theme.of(context).hintColor,
        fontSize: 14,
      ),
    );
  }
}