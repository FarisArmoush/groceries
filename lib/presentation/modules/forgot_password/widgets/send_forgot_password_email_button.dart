import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/forgot_password/cubit/forgot_password_cubit.dart';

class SendForgotPasswordEmailButton extends StatelessWidget {
  const SendForgotPasswordEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 24,
        ),
        child: BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
          builder: (context, state) {
            return ElevatedButton(
              onPressed: state.isValid
                  ? () => context.read<ForgotPasswordCubit>().sendEmail()
                  : null,
              child: Text(AppTranslations.sendResetPassword),
            );
          },
        ),
      ),
    );
  }
}
