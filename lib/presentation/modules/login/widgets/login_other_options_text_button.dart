part of '../login.dart';

class LoginOtherOptionsTextButton extends StatelessWidget {
  const LoginOtherOptionsTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SwitchAuthenticationOptionTextButton(
      upperText: AppTranslations.login.dontHaveAnAccount,
      lowerText: AppTranslations.login.registerNow,
      onTap: () => context.pushReplacementNamed(AppNamedRoutes.register),
    );
  }
}
