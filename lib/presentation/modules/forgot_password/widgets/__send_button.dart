part of 'forgot_password_form.dart';

class _SendButton extends StatelessWidget {
  const _SendButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 24,
        ),
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
      ),
    );
  }
}
