import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class LeaveOnboardingButton extends StatelessWidget {
  const LeaveOnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: FloatingActionButton.extended(
        onPressed: () => context.pushReplacementNamed(AppNamedRoutes.welcome),
        label: Text(
          AppTranslations.finishIntroduction,
        ),
        backgroundColor: context.theme.primaryColorLight,
      ),
    );
  }
}
