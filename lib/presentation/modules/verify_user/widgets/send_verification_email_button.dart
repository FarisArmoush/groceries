part of '../verify_user.dart';

class SendVerificationEmailButton extends StatelessWidget {
  const SendVerificationEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.read<VerifyUserCubit>().sendVerificationEmail(),
      icon: Assets.svg.icSend.svg(
        color: context.theme.colorScheme.secondary,
      ),
      label: const Text('Send'),
    );
  }
}
