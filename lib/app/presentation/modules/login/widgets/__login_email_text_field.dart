part of 'login_form.dart';

class _LoginEmailTextField extends StatelessWidget {
  const _LoginEmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
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
