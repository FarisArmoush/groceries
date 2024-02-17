import 'package:flutter/material.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class UpdateDisplayNameHeaderText extends StatelessWidget {
  const UpdateDisplayNameHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Change username',
      style: TextStyle(
        fontWeight: AppFontWeights.semiBold,
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
