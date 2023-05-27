part of 'forgot_password_form.dart';

class _EmailTextField extends StatelessWidget {
  const _EmailTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          onChanged: (value) =>
              context.read<ForgotPasswordCubit>().emailChanged(value),
          labelText: AppTranslations.email,
          keyboardType: TextInputType.emailAddress,
          validator: (value) => state.email.validator(value),
          errorText: state.email.error,
          prefixIcon: Icon(
            CupertinoIcons.mail,
            color: Theme.of(context).hintColor,
          ),
        );
      },
    );
  }
}
