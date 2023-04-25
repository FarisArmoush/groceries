import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';

class LeaveOnboardingButton extends StatelessWidget {
  const LeaveOnboardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => context.pushReplacementNamed(AppNamedRoutes.welcome),
      label: const Text('Finish Introduction'),
      backgroundColor: Theme.of(context).primaryColorLight,
    );
  }
}
