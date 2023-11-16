part of '../verify_user.dart';

class SendVerificationEmailButton extends StatelessWidget {
  const SendVerificationEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.read<VerifyUserBloc>()
        ..add(
          const VerifyUserEvent.verifyUser(),
        ),
      icon: Assets.svg.icSend.svg(
        color: context.theme.colorScheme.secondary,
      ),
      label: Text(AppTranslations.forgotPassword.sendResetPassword),
    );
  }
}
