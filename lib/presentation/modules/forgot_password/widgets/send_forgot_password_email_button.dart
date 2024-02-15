import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';

class SendForgotPasswordEmailButton extends StatelessWidget {
  const SendForgotPasswordEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        buildWhen: (previous, current) => previous.isValid != current.isValid,
        builder: (context, state) {
          return ElevatedButton(
            onPressed: state.isValid
                ? () => context.read<ForgotPasswordBloc>().add(
                      const ForgotPasswordEvent.sendEmail(),
                    )
                : null,
            child: Text(AppTranslations.forgotPassword.sendResetPassword),
          );
        },
      ),
    ).symmetricPadding(
      vertical: 24,
      horizontal: 24,
    );
  }
}
