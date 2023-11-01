part of '../onboarding.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingBloc(
        context.read<SharedPreferences>(),
      ),
      child: const OnboardingPage(),
    );
  }
}
