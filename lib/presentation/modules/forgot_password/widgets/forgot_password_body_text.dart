import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class ForgotPasswordBodyText extends StatelessWidget {
  const ForgotPasswordBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: const Duration(milliseconds: 900),
      child: Text(
        AppTranslations.forgotPasswordBody,
        style: TextStyle(
          fontFamily: AppFonts.regular(context),
          color: context.theme.primaryColor,
          fontSize: 18,
        ),
      ),
    );
  }
}
