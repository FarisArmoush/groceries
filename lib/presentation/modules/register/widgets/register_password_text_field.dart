import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/presentation/widgets/password_input_obscurity_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RegisterPasswordTextField extends StatelessWidget {
  const RegisterPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.isObscure != current.isObscure,
      builder: (context, state) {
        return AppTextField(
          autofillHints: const [AutofillHints.password],
          keyboardType: TextInputType.visiblePassword,
          labelText: AppTranslations.general.password,
          errorText: state.password.displayError,
          obscureText: state.isObscure,
          prefixIcon: Assets.icons.lock.svg(
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              context.theme.inputDecorationTheme.prefixIconColor!,
              BlendMode.srcIn,
            ),
          ),
          suffixIcon: PasswordInputObscurityButton(
            isObscure: state.isObscure,
            onPressed: () => context.read<RegisterBloc>().add(
                  const RegisterEvent.toggleIsObscure(),
                ),
          ),
          onChanged: (value) => context.read<RegisterBloc>().add(
                RegisterEvent.updatePassword(value),
              ),
        );
      },
    );
  }
}
