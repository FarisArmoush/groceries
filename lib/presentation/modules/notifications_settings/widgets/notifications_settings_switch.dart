import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class NotificationsSettingsSwitch extends StatefulWidget {
  const NotificationsSettingsSwitch({Key? key}) : super(key: key);

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
      title: Text(
        'Requests',
        style: AppTextStyles.poppinsMedium(
          color: Theme.of(context).primaryColor,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        'Receive a notification when someone requests a grocery from you?',
        style: AppTextStyles.poppinsLight(
          color: Theme.of(context).hintColor,
          fontSize: 12,
        ),
      ),
      onChanged: (bool newValue) {
        setState(() {
          newValue = value = !value;
        });
      },
    );
  }
}
