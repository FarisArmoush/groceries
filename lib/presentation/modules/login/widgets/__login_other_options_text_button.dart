part of 'login_form.dart';

class _LoginOtherOptionsTextButton extends StatelessWidget {
  const _LoginOtherOptionsTextButton();

  @override
  Widget build(BuildContext context) {
    return OtherOptionTextButton(
      upperText: AppTranslations.dontHaveAnAccount,
      lowerText: AppTranslations.registerNow,
      onTap: () => context.pushReplacementNamed(AppNamedRoutes.register),
    );
  }
}
