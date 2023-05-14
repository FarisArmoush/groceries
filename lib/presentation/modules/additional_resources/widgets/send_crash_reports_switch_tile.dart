import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class SendCrashReportsSwitchTile extends StatelessWidget {
  const SendCrashReportsSwitchTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: true,
      onChanged: (value) {},
      tileColor: Colors.transparent,
      title: Text(
        AppTranslations.sendCrashReports,
        style: AppTextStyles.poppinsRegular(
          color: Theme.of(context).primaryColor,
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        AppTranslations.sendCrashReportsDescription,
        style: AppTextStyles.poppinsRegular(
          color: Theme.of(context).hintColor,
          fontSize: 12,
        ),
      ),
    );
  }
}
