import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/localization/app_translations.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.appName,
      style: AppTextStyles.poppinsBlack(
        color: Theme.of(context).primaryColorLight,
        fontSize: 32,
      ),
      textAlign: TextAlign.center,
    );
  }
}
