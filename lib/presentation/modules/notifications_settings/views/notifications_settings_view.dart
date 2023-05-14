import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/notifications_settings/widgets/notifications_settings_switch.dart';
import 'package:groceries/presentation/widgets/app_bar_title.dart';

class NotificationsSettingsView extends StatelessWidget {
  const NotificationsSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
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
