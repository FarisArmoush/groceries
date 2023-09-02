part of '../login.dart';

class LoginPasswordTextField extends StatelessWidget {
  const LoginPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 900.milliseconds,
      child: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) =>
            previous.password != current.password ||
            previous.isObscure != current.isObscure,
        builder: (context, state) {
          return AppTextField(
            prefixIcon: Assets.svg.icLock.svg(
              color: context.theme.inputDecorationTheme.prefixIconColor,
              fit: BoxFit.scaleDown,
            ),
            autofillHints: const [
              AutofillHints.password,
            ],
            keyboardType: TextInputType.visiblePassword,
            onChanged: (password) {
              context.read<LoginCubit>().passwordChanged(password);
            },
            labelText: AppTranslations.general.password,
            errorText: state.password.displayError,
            validator: (value) => state.password.validator(value),
            obscureText: state.isObscure,
            suffixIcon: PasswordInputObscurityButton(
              isObscure: state.isObscure,
              onPressed: context.read<LoginCubit>().toggleIsObscure,
            ),
          );
        },
      ),
    );
  }
}
