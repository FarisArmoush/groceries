import 'package:flutter/material.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';

class TermsOfUseView extends StatelessWidget {
  const TermsOfUseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslations.termsOfUse,
        ),
      ),
      body: Center(
        child: Text(
          'TermsOfUseView is Working!',
          style: AppTextStyles.poppinsMedium(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
