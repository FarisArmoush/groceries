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
        colorFilter: ColorFilter.mode(
          context.theme.colorScheme.secondary,
          BlendMode.srcIn,
        ),
      ),
      label: Text(AppTranslations.forgotPassword.sendResetPassword),
    );
  }
}
