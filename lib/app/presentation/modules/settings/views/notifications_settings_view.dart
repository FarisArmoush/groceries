import 'package:flutter/material.dart';
import 'package:groceries/app/core/localization/app_translations.dart';
import 'package:groceries/app/presentation/modules/settings/widgets/notifications_settings_switch.dart';

class NotificationsSettingsView extends StatelessWidget {
  const NotificationsSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslations.notificationsSettings,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: const [
          NotificationsSettingsSwitch(),
        ],
      ),
    );
  }
}
