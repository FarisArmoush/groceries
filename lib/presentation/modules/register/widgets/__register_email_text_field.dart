part of 'register_form.dart';

class _RegisterEmailTextField extends StatelessWidget {
  const _RegisterEmailTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) {
        return previous.email != current.email;
      },
      builder: (context, state) {
        return AppTextField(
          onChanged: (email) {
            context.read<RegisterCubit>().emailChanged(email);
          },
          prefixIcon: const Icon(CupertinoIcons.mail),
          keyboardType: TextInputType.emailAddress,
          labelText: AppTranslations.email,
          validator: (value) => state.email.validator(value),
          errorText: state.email.displayError,
        );
      },
    );
  }
}
