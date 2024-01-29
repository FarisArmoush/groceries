import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class UpdateEmailHeaderText extends StatelessWidget {
  const UpdateEmailHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Change Email',
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
