import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/login/bloc/login_bloc.dart';
import 'package:groceries/presentation/modules/login/widgets/login_body_text.dart';
import 'package:groceries/presentation/modules/login/widgets/login_button.dart';
import 'package:groceries/presentation/modules/login/widgets/login_email_text_field.dart';
import 'package:groceries/presentation/modules/login/widgets/login_forgot_password_button.dart';
import 'package:groceries/presentation/modules/login/widgets/login_header_text.dart';
import 'package:groceries/presentation/modules/login/widgets/login_other_options_text_button.dart';
import 'package:groceries/presentation/modules/login/widgets/login_password_text_field.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: listener,
        child: ListView(
          padding: AppPaddings.scaffoldPadding(context),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.09,
            ),
            const LoginHeaderText(),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            const LoginBodyText(),
            SizedBox(
              height: context.deviceHeight * 0.03,
            ),
            const LoginEmailTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const LoginPasswordTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const LoginForgotPasswordButton(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const LoginButton(),
            SizedBox(
              height: context.deviceHeight * 0.03,
            ),
            const LoginOtherOptionsTextButton(),
          ],
        ),
      ),
    );
  }

  void listener(BuildContext context, LoginState state) {
    if (state.status.isFailure) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.error(
            error: state.errorMessage ?? 'Authentication Failure',
          ),
        );
    }
    if (state.status.isSuccess) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.success(
            message: 'Welcome Back',
          ),
        );
      context.pushReplacementNamed(AppNamedRoutes.root);
    }
  }
}
