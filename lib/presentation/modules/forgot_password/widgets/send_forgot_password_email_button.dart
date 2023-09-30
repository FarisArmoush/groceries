part of '../forgot_password.dart';

class SendForgotPasswordEmailButton extends StatelessWidget {
  const SendForgotPasswordEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        builder: (context, state) {
          return ElevatedButton(
            onPressed: state.isValid
                ? () => context.read<ForgotPasswordBloc>().add(
                      const ForgotPasswordEvent.sendEmail(),
                    )
                : null,
            child: Text(AppTranslations.forgotPassword.sendResetPassword),
          );
        },
      ),
    ).symmetricPadding(
      vertical: 12,
      horizontal: 24,
    );
  }
}
