import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class ForgotPasswordEmailTextField extends StatelessWidget {
  const ForgotPasswordEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state.status.isInProgressOrSuccess,
          child: AppTextField(
            focusNode: state.emailNode,
            onChanged: (value) => context.read<ForgotPasswordBloc>().add(
                  ForgotPasswordEvent.emailChanged(value),
                ),
            labelText: Translations.general.email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) => state.email.validator(value),
            errorText: state.email.displayError,
            prefixIcon: Assets.icons.mail.svg(
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                context.theme.inputDecorationTheme.prefixIconColor!,
                BlendMode.srcIn,
              ),
            ),
          ),
        );
      },
    );
  }
}
