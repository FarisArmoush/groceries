import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';

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
      ),
      subtitle: Text(
        AppTranslations.sendCrashReportsDescription,
      ),
    );
  }
}
