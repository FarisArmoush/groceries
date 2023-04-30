part of 'login_form.dart';

class _LoginPasswordTextField extends StatefulWidget {
  const _LoginPasswordTextField({Key? key}) : super(key: key);

  @override
  State<_LoginPasswordTextField> createState() =>
      _LoginPasswordTextFieldState();
}

class _LoginPasswordTextFieldState extends State<_LoginPasswordTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) {
        return previous.password != current.password;
      },
      builder: (context, state) {
        return AppTextField(
          obscureText: _isObscure,
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
          suffixIcon: _obscurityButton(),
        );
      },
    );
  }

  Widget _obscurityButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: IconButton(
        splashRadius: 24,
        onPressed: () => setState(() => _isObscure = !_isObscure),
        icon: SvgPicture.asset(
          _isObscure ? Assets.svg.icEyeOff : Assets.svg.icEye,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
