import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';

class LeaveOnboardingButton extends StatelessWidget {
  const LeaveOnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => context.pushReplacementNamed(AppNamedRoutes.welcome),
      label: Text(
        AppTranslations.finishIntroduction,
      ),
      backgroundColor: Theme.of(context).primaryColorLight,
    );
  }
}
