import 'package:flutter/material.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';

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
