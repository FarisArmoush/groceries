import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class UpdateDisplayNameHeaderText extends StatelessWidget {
  const UpdateDisplayNameHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Change username',
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
