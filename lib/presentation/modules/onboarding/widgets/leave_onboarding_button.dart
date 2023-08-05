part of '../onborading.dart';

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
