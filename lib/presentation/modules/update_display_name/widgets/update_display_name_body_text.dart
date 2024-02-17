import 'package:flutter/material.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class UpdateDisplayNameBodyText extends StatelessWidget {
  const UpdateDisplayNameBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Choose your new username',
      style: TextStyle(
        fontWeight: AppFontWeights.regular,
        color: context.theme.primaryColor,
        fontSize: 22,
      ),
    );
  }
}
