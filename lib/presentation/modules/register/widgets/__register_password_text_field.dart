part of 'register_form.dart';

class _RegisterPasswordTextField extends StatelessWidget {
  const _RegisterPasswordTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
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
          labelText: AppTranslations.password,
          errorText: state.password.displayError,
        );
      },
    );
  }
}
