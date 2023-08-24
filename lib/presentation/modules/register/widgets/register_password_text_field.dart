part of '../register.dart';

class RegisterPasswordTextField extends StatelessWidget {
  const RegisterPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      child: BlocBuilder<RegisterCubit, RegisterState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) {
          return AppTextField(
            obscureText: true,
            prefixIcon: const Icon(CupertinoIcons.lock),
            autofillHints: const [AutofillHints.password],
            keyboardType: TextInputType.visiblePassword,
            onChanged: (password) {
              context.read<RegisterCubit>().passwordChanged(password);
            },
            labelText: AppTranslations.general.password,
            errorText: state.password.displayError,
          );
        },
      ),
    );
  }
}
