import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_colors.dart';

class NotificationsSettingsSwitch extends StatefulWidget {
  const NotificationsSettingsSwitch({super.key});

  @override
  State<NotificationsSettingsSwitch> createState() =>
      _NotificationsSettingsSwitchState();
}

class _NotificationsSettingsSwitchState
    extends State<NotificationsSettingsSwitch> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      inactiveTrackColor: AppColors.black,
      activeColor: Theme.of(context).primaryColorLight,
      inactiveThumbColor: AppColors.veryLightGrey,
      activeTrackColor: AppColors.veryLightGrey,
      tileColor: Colors.transparent,
      value: value,
      title: const Text(
        'Requests',
      ),
      subtitle: const Text(
        'Receive a notification when someone requests a grocery from you?',
      ),
      onChanged: (newValue) => setState(() => newValue = value = !value),
    );
  }
}
