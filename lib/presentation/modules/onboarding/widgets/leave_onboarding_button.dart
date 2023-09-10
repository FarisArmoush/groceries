part of '../onboarding.dart';

class LeaveOnboardingButton extends StatelessWidget {
  const LeaveOnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text(
        AppTranslations.onboarding.finishIntroduction,
      ),
      backgroundColor: context.theme.primaryColorLight,
      onPressed: () async {
        context.pushReplacementNamed(AppNamedRoutes.welcome);
        await context.read<OnboardingCubit>().markOnboardingAsViewed();
      },
    );
  }
}
