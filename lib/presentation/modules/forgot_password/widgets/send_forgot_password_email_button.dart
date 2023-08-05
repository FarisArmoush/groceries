part of '../forgot_password.dart';

class SendForgotPasswordEmailButton extends StatelessWidget {
  const SendForgotPasswordEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 700.milliseconds,
      child: SizedBox(
        width: double.infinity,
        child: BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
          builder: (context, state) {
            return ElevatedButton(
              onPressed: state.isValid
                  ? () => context.read<ForgotPasswordCubit>().sendEmail()
                  : null,
              child: Text(AppTranslations.sendResetPassword),
            );
          },
        ),
      ).symmetricPadding(
        vertical: 12,
        horizontal: 24,
      ),
    );
  }
}
