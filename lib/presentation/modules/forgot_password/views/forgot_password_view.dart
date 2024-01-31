import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/forgot_password_body_text.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/forgot_password_email_text_field.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/forgot_password_header_text.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/send_forgot_password_email_button.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: _listener,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(),
          body: ListView(
            padding: AppPaddings.scaffold(context),
            children: [
              SizedBox(
                height: context.deviceWidth * 0.02,
              ),
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
          bottomSheet: const SendForgotPasswordEmailButton(),
        ),
      ),
    );
  }

  void _listener(BuildContext context, ForgotPasswordState state) {
    if (state.status.isSuccess) {
      context.pushReplacementNamed(
        AppNamedRoutes.resetPasswordSentSuccessfully,
      );
    }
    if (state.status.isFailure) {
      context.pop();
      ScaffoldMessenger.of(context).showSnackBar(
        AppSnackBars.error(
          error: state.errorMessage ?? 'Failed to send',
        ),
      );
    }
    if (state.status.isInProgress) {
      showDialog<AppLoadingIndicator>(
        context: context,
        builder: (context) => const AppLoadingIndicator(),
        barrierDismissible: false,
      );
    }
  }
}
