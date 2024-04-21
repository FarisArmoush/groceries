import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/modules/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:groceries/presentation/widgets/buttons_loading_indicator.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';

class SendForgotPasswordEmailButton extends StatelessWidget {
  const SendForgotPasswordEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        buildWhen: (previous, current) =>
            previous.isValid != current.isValid ||
            previous.status != current.status,
        builder: (context, state) {
          return IgnorePointer(
            ignoring: state.status.isInProgressOrSuccess,
            child: ElevatedButton(
              onPressed: state.isValid
                  ? () => context.read<ForgotPasswordBloc>()
                    ..add(const ForgotPasswordEvent.sendEmail())
                    ..add(const ForgotPasswordEvent.dismissKeyboard())
                  : null,
              child: state.status.isInProgressOrSuccess
                  ? const ButtonsLoadingIndicator()
                  : Text(Translations.forgotPassword.sendResetPassword),
            ),
          );
        },
      ),
    ).allPadding(24);
  }
}
