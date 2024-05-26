import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/router/app_route.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/forgot_password_body_text.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/forgot_password_email_text_field.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/forgot_password_header_text.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/send_forgot_password_email_button.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: _listener,
      listenWhen: (previous, current) => previous.status != current.status,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          bottom: false,
          child: ListView(
            padding: const EdgeInsetsDirectional.all(24),
            children: [
              const ForgotPasswordHeaderText(),
              SizedBox(
                height: context.deviceHeight * 0.02,
              ),
              const ForgotPasswordBodyText(),
              SizedBox(
                height: context.deviceHeight * 0.06,
              ),
              const ForgotPasswordEmailTextField(),
            ],
          ),
        ),
        bottomSheet: const SendForgotPasswordEmailButton(),
      ),
    );
  }

  void _listener(BuildContext context, ForgotPasswordState state) {
    if (state.status.isSuccess) {
      context.pushReplacementNamed(
        AppRoute.resetPasswordSentSuccessfully.named,
      );
    }
    if (state.status.isFailure) {
      final defaultError = Translations.errors.defaultError;
      ScaffoldMessenger.of(context).showSnackBar(
        AppSnackBars.error(
          error: state.errorMessage ?? defaultError,
        ),
      );
    }
  }
}
