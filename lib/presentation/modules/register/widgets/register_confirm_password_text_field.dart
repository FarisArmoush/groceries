part of '../register.dart';

class RegisterConfirmPasswordTextField extends StatelessWidget {
  const RegisterConfirmPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.confirmPassword != current.confirmPassword ||
          previous.isObscure != current.isObscure,
      builder: (context, state) {
        return AppTextField(
          prefixIcon: Assets.svg.icRepeat.svg(
            color: context.theme.inputDecorationTheme.prefixIconColor,
            fit: BoxFit.scaleDown,
          ),
          onChanged: (value) {
            context.read<RegisterBloc>().add(
                  RegisterEvent.updateConfirmPassword(value),
                );
          },
          labelText: AppTranslations.register.repeatPassword,
          validator: (value) => state.confirmPassword.validator(value),
          errorText: state.confirmPassword.displayError,
          obscureText: state.isObscure,
          suffixIcon: PasswordInputObscurityButton(
            isObscure: state.isObscure,
            onPressed: () => context.read<RegisterBloc>().add(
                  const RegisterEvent.toggleIsObscure(),
                ),
          ),
        );
      },
    );
  }
}
