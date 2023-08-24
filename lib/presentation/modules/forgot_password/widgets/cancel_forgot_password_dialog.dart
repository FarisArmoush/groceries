part of '../forgot_password.dart';

class CancelForgotPasswordDialog extends StatelessWidget {
  const CancelForgotPasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        AppTranslations.forgotPassword.cancelForgotPassowordDialogHeader,
        textAlign: TextAlign.center,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 16,
      ),
      children: [
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        FilledButton(
          onPressed: () => context
            ..pop()
            ..pop(),
          child: Text(AppTranslations.forgotPassword.yesCancelForgotPassword),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(AppTranslations.forgotPassword.dontCancelForgotPassword),
        ),
      ],
    );
  }
}
