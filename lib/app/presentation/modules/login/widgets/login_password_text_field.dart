import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/presentation/modules/login/cubit/login_cubit.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';
import 'package:groceries/gen/assets.gen.dart';

class LoginPasswordTextField extends StatefulWidget {
  const LoginPasswordTextField({Key? key}) : super(key: key);

  @override
  State<LoginPasswordTextField> createState() => _LoginPasswordTextFieldState();
}

class _LoginPasswordTextFieldState extends State<LoginPasswordTextField> {
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
          labelText: 'Password',
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
