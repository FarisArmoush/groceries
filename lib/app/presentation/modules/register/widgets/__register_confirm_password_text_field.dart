part of 'register_form.dart';

class _RegisterConfirmPasswordTextField extends StatelessWidget {
  const _RegisterConfirmPasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) {
        return previous.password != current.password ||
            previous.confirmedPassword != current.confirmedPassword;
      },
      builder: (context, state) {
        return AppTextField(
          onChanged: (confirmPassword) {
            context
                .read<RegisterCubit>()
                .confirmedPasswordChanged(confirmPassword);
          },
          obscureText: true,
          labelText: 'Repeat your password',
          validator: (value) => state.confirmedPassword.validator(value),
          errorText: state.confirmedPassword.error,
        );
      },
    );
  }
}
