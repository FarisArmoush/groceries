import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/login/bloc/login_bloc.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/presentation/widgets/password_input_obscurity_button.dart';

class LoginPasswordTextField extends StatelessWidget {
  const LoginPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.isObscure != current.isObscure,
      builder: (context, state) {
        return AppTextField(
          focusNode: state.passwordNode,
          prefixIcon: Assets.icons.lock.svg(
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              context.theme.inputDecorationTheme.prefixIconColor!,
              BlendMode.srcIn,
            ),
          ),
          autofillHints: const [
            AutofillHints.password,
          ],
          keyboardType: TextInputType.visiblePassword,
          onChanged: (password) {
            context.read<LoginBloc>().add(LoginEvent.updatePassword(password));
          },
          onFieldSubmitted: (_) => state.isValid
              ? () => context.read<LoginBloc>().add(const LoginEvent.submit())
              : null,
          labelText: Translations.general.password,
          errorText: state.password.displayError,
          validator: (value) => state.password.validator(value),
          obscureText: state.isObscure,
          suffixIcon: PasswordInputObscurityButton(
            isObscure: state.isObscure,
            onPressed: () => context.read<LoginBloc>().add(
                  const LoginEvent.toggleIsObscure(),
                ),
          ),
        );
      },
    );
  }
}
