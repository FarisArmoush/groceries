part of 'login_form.dart';

class _LoginPasswordTextField extends StatelessWidget {
  const _LoginPasswordTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return AppTextField(
          prefixIcon: Icon(
            Icons.lock,
            color: Theme.of(context).hintColor,
          ),
          obscureText: true,
          autofillHints: const [
            AutofillHints.password,
          ],
          keyboardType: TextInputType.visiblePassword,
          onChanged: (password) {
            context.read<LoginCubit>().passwordChanged(password);
          },
          labelText: AppTranslations.password,
          errorText: state.password.error,
          validator: (value) => state.password.validator(value),
        );
      },
    );
  }
}