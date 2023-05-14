part of 'login_form.dart';

class _LoginForgotPasswordButton extends StatelessWidget {
  const _LoginForgotPasswordButton();

  @override
  Widget build(BuildContext context) {
    // A row is used to align the button to end side.
    return Row(
      children: [
        const Spacer(),
        TextButton(
          child: Text(
            AppTranslations.forgotYourPassword,
          ),
          onPressed: () => context.pushNamed(AppNamedRoutes.forgotPassword),
        ),
      ],
    );
  }
}
