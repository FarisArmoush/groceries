// ignore_for_file: strict_raw_type
import 'package:flutter/material.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';

class AppearanceRadio extends StatelessWidget {
  const AppearanceRadio({
    required this.title,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    Key? key,
  }) : super(key: key);
  final String title;
  final Object? groupValue;
  final Object? value;
  final ValueChanged? onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      tileColor: Colors.transparent,
      controlAffinity: ListTileControlAffinity.trailing,
      activeColor: Theme.of(context).primaryColorLight,
      value: value,
      groupValue: groupValue,
      title: Text(
        title,
        style: AppTextStyles.poppinsMedium(
          color: Theme.of(context).primaryColor,
          fontSize: 14,
        ),
      ),
      onChanged: onChanged,
    );
  }
}
