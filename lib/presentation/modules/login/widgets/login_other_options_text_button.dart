part of '../login.dart';

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
