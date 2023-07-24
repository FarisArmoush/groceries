import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/buttons/other_options_text_button.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';

class LoginOtherOptionsTextButton extends StatelessWidget {
  const LoginOtherOptionsTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 600.milliseconds,
      child: OtherOptionTextButton(
        upperText: AppTranslations.dontHaveAnAccount,
        lowerText: AppTranslations.registerNow,
        onTap: () => context.pushReplacementNamed(AppNamedRoutes.register),
      ),
    );
  }
}
