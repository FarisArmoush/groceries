import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/localization/app_translations.dart';

class WhatsNewView extends StatelessWidget {
  const WhatsNewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.whatsNew),
      ),
      body: Center(
        child: Text(
          'WhatsNewView is Working!',
          style: AppTextStyles.poppinsMedium(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
