import 'package:flutter/material.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class ThemeRadio extends StatelessWidget {
  const ThemeRadio({
    required this.title,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    super.key,
  });
  final String title;
  final ThemeMode groupValue;
  final ThemeMode value;
  final ValueChanged<ThemeMode?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioListTile<ThemeMode>(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      title: Text(title),
      tileColor: Colors.transparent,
      activeColor: context.theme.primaryColorLight,
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }
}
