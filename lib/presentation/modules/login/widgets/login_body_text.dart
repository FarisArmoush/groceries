import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class LoginBodyText extends StatelessWidget {
  const LoginBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: const Duration(milliseconds: 1100),
      child: Text(
        AppTranslations.loginBody,
        style: TextStyle(
          fontFamily: AppFonts.regular(context),
          color: context.theme.primaryColor,
          fontSize: 22,
        ),
      ),
    );
  }
}
