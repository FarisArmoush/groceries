part of '../register.dart';

class RegisterOtherOptionTextButton extends StatelessWidget {
  const RegisterOtherOptionTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO(Faris): add to form.
    return OtherOptionTextButton(
      upperText: AppTranslations.register.alreadyHaveAnAccount,
      lowerText: AppTranslations.register.loginNow,
      onTap: () => context.pushNamed(AppNamedRoutes.login),
    );
  }
}
