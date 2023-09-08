part of '../login.dart';

class LoginForgotPasswordButton extends StatelessWidget {
  const LoginForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        TextButton(
          child: Text(
            AppTranslations.forgotPassword.forgotPassword,
          ),
          onPressed: () => context.pushNamed(AppNamedRoutes.forgotPassword),
        ),
      ],
    );
  }
}
