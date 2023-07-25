import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class WelcomeViewBodyText extends StatelessWidget {
  const WelcomeViewBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      child: Text(
        AppTranslations.welcomeBody,
        style: TextStyle(
          fontFamily: AppFonts.regular(context),
          color: context.theme.primaryColor.withOpacity(0.9),
          fontSize: 20,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
