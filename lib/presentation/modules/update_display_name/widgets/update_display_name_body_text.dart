import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class UpdateDisplayNameBodyText extends StatelessWidget {
  const UpdateDisplayNameBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Choose your new username',
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: context.theme.primaryColor,
        fontSize: 22,
      ),
    );
  }
}
