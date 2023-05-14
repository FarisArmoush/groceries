import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class WelcomeViewBodyText extends StatelessWidget {
  const WelcomeViewBodyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.welcomeBody,
      style: AppTextStyles.regular(
        context: context,
        color: Theme.of(context).primaryColor.withOpacity(0.9),
        fontSize: 20,
      ),
      textAlign: TextAlign.start,
    );
  }
}
