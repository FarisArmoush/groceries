part of '../register.dart';

class RegisterPasswordTextField extends StatelessWidget {
  const RegisterPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.isObscure != current.isObscure,
      builder: (context, state) {
        return AppTextField(
          autofillHints: const [AutofillHints.password],
          keyboardType: TextInputType.visiblePassword,
          labelText: AppTranslations.general.password,
          errorText: state.password.displayError,
          obscureText: state.isObscure,
          prefixIcon: Assets.svg.icLock.svg(
            color: context.theme.inputDecorationTheme.prefixIconColor,
            fit: BoxFit.scaleDown,
          ),
          suffixIcon: PasswordInputObscurityButton(
            isObscure: state.isObscure,
            onPressed: () => context.read<RegisterBloc>().add(
                  const RegisterEvent.toggleIsObscure(),
                ),
          ),
          onChanged: (value) => context.read<RegisterBloc>().add(
                RegisterEvent.updatePassword(value),
              ),
        );
      },
    );
  }
}
