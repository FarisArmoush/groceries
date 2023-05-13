part of 'forgot_password_form.dart';

class _SendButton extends StatelessWidget {
  const _SendButton({Key? key}) : super(key: key);

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
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) {
            return ElevatedButton(
              onPressed: state.status.isValidated
                  ? () => context.read<ForgotPasswordCubit>().sendEmail()
                  : null,
              child: Text(AppTranslations.send),
            );
          },
        ),
      ),
    );
  }
}
