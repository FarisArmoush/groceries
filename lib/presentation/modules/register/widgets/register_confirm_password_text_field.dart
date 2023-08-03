part of '../register.dart';

class RegisterConfirmPasswordTextField extends StatelessWidget {
  const RegisterConfirmPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 700.milliseconds,
      child: BlocBuilder<RegisterCubit, RegisterState>(
        buildWhen: (previous, current) {
          return previous.password != current.password ||
              previous.confirmedPassword != current.confirmedPassword;
        },
        builder: (context, state) {
          return AppTextField(
            prefixIcon: const Icon(CupertinoIcons.repeat),
            onChanged: (confirmPassword) {
              context
                  .read<RegisterCubit>()
                  .confirmedPasswordChanged(confirmPassword);
            },
            obscureText: true,
            labelText: AppTranslations.repeatPassword,
            validator: (value) => state.confirmedPassword.validator(value),
            errorText: state.confirmedPassword.displayError,
          );
        },
      ),
    );
  }
}
