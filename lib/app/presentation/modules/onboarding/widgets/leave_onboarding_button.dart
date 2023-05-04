import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/config/routes/app_named_routes.dart';

class LeaveOnboardingButton extends StatelessWidget {
  const LeaveOnboardingButton({Key? key}) : super(key: key);

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
