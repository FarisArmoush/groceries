import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';

class ForgotPasswordHeaderText extends StatelessWidget {
  const ForgotPasswordHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 1000.milliseconds,
      child: Text(
        AppTranslations.forgotPassword,
        style: TextStyle(
          fontFamily: AppFonts.semiBold(context),
          color: context.theme.primaryColorLight,
          fontSize: 32,
        ),
      ),
    );
  }
}
