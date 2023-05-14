import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class WelcomeViewHeaderText extends StatelessWidget {
  const WelcomeViewHeaderText({super.key});

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
