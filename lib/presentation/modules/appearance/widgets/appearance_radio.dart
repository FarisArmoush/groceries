// ignore_for_file: strict_raw_type
import 'package:flutter/material.dart';

class AppearanceRadio extends StatelessWidget {
  const AppearanceRadio({
    required this.title,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    super.key,
  });
  final String title;
  final ThemeMode groupValue;
  final ThemeMode value;
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
      ),
      onChanged: onChanged,
    );
  }
}
