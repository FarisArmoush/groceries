part of 'login_form.dart';

class _LoginEmailTextField extends StatelessWidget {
  const _LoginEmailTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          prefixIcon: const Icon(CupertinoIcons.mail),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          labelText: AppTranslations.email,
          errorText: state.email.error,
          validator: (value) => state.email.validator(value),
        );
      },
    );
  }
}
