part of '../register.dart';

class RegisterPasswordTextField extends StatelessWidget {
  const RegisterPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      child: BlocBuilder<RegisterCubit, RegisterState>(
        buildWhen: (previous, current) =>
            previous.password != current.password ||
            previous.isObscure != current.isObscure,
        builder: (context, state) {
          return AppTextField(
            prefixIcon: const Icon(CupertinoIcons.lock),
            autofillHints: const [AutofillHints.password],
            keyboardType: TextInputType.visiblePassword,
            onChanged: (password) {
              context.read<RegisterCubit>().passwordChanged(password);
            },
            labelText: AppTranslations.general.password,
            errorText: state.password.displayError,
            obscureText: state.isObscure,
            suffixIcon: PasswordInputObscurityButton(
              isObscure: state.isObscure,
              onPressed: context.read<RegisterCubit>().toggleIsObscure,
            ),
          );
        },
      ),
    );
  }
}
