import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/localization/app_translations.dart';

class AppTipText extends StatelessWidget {
  const AppTipText({Key? key}) : super(key: key);

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
