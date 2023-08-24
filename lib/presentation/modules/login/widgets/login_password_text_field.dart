part of '../login.dart';

class LoginPasswordTextField extends StatelessWidget {
  const LoginPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 900.milliseconds,
      child: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) {
          return AppTextField(
            prefixIcon: const Icon(CupertinoIcons.lock),
            obscureText: true,
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
          );
        },
      ),
    );
  }
}
