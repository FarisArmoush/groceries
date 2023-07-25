import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/cancel_forgot_password_dialog.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/forgot_password_body_text.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/forgot_password_email_text_field.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/forgot_password_header_text.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/send_forgot_password_email_button.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
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
      },
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: _appBar(context),
          body: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            physics: const BouncingScrollPhysics(),
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

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: BackButton(
        onPressed: () => showDialog<CancelForgotPasswordDialog>(
          context: context,
          builder: (context) => const CancelForgotPasswordDialog(),
        ),
      ),
    );
  }
}
