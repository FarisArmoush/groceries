import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/localization/app_translations.dart';

class WelcomeViewHeaderText extends StatelessWidget {
  const WelcomeViewHeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.welcomeHeader,
      textAlign: TextAlign.start,
      style: AppTextStyles.poppinsBold(
        color: Theme.of(context).primaryColor,
        fontSize: 30,
      ),
    );
  }
}
