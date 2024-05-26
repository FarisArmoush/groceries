import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/presentation/widgets/password_input_obscurity_button.dart';

class RegisterConfirmPasswordTextField extends StatelessWidget {
  const RegisterConfirmPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.confirmPassword != current.confirmPassword ||
          previous.isObscure != current.isObscure,
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state.status.isInProgressOrSuccess,
          child: AppTextField(
            focusNode: state.confirmPasswordNode,
            prefixIcon: Assets.icons.repeat.svg(
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                context.theme.inputDecorationTheme.prefixIconColor!,
                BlendMode.srcIn,
              ),
            ),
            onChanged: (value) {
              context.read<RegisterBloc>().add(
                    RegisterEvent.updateConfirmPassword(value),
                  );
            },
            labelText: Translations.register.repeatPassword,
            validator: (value) => state.confirmPassword.validator(value),
            errorText: state.confirmPassword.displayError,
            obscureText: state.isObscure,
            suffixIcon: PasswordInputObscurityButton(
              isObscure: state.isObscure,
              onPressed: () => context.read<RegisterBloc>().add(
                    const RegisterEvent.toggleIsObscure(),
                  ),
            ),
          ),
        );
      },
    );
  }
}
