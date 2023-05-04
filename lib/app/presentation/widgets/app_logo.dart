import 'package:flutter/material.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';

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
