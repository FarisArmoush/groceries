import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/onboarding/bloc/onboarding_bloc.dart';
import 'package:groceries/presentation/router/app_route.dart';

class LeaveOnboardingButton extends StatelessWidget {
  const LeaveOnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text(
        Translations.onboarding.finishIntroduction,
      ),
      backgroundColor: context.theme.primaryColorLight,
      onPressed: () async {
        context.pushReplacementNamed(AppRoute.welcome.named);
        context.read<OnboardingBloc>().add(
              const OnboardingEvent.markOnboardingAsViewed(),
            );
      },
    );
  }
}
