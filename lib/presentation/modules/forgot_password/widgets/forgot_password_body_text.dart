part of '../forgot_password.dart';

class ForgotPasswordBodyText extends StatelessWidget {
  const ForgotPasswordBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.forgotPassword.forgotPasswordBody,
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: context.theme.primaryColor,
        fontSize: 18,
      ),
    );
  }
}
