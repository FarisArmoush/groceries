import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';

class LoginHeaderText extends StatelessWidget {
  const LoginHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      // duration: const Duration(milliseconds: 1200),
      duration: 1200.milliseconds,
      child: Text(
        AppTranslations.loginHeader,
        style: TextStyle(
          fontFamily: AppFonts.semiBold(context),
          color: context.theme.primaryColorLight,
          fontSize: 32,
        ),
      ),
    );
  }
}
