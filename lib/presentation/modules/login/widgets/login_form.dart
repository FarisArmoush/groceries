import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/login/cubit/login_cubit.dart';
import 'package:groceries/presentation/widgets/app_snackbars/app_snack_bars.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/presentation/widgets/buttons/other_options_text_button.dart';
import 'package:groceries/presentation/widgets/buttons_loading_indicator.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

part '__login_body_text.dart';
part '__login_button.dart';
part '__login_email_text_field.dart';
part '__login_forgot_password_button.dart';
part '__login_header.dart';
part '__login_other_options_text_button.dart';
part '__login_password_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.status.isSubmissionFailure) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                AppSnackBars.error(
                  error: state.errorMessage ?? 'Authentication Failure',
                ),
              );
          }
          if (state.status.isSubmissionSuccess) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                AppSnackBars.success(
                  message: 'Welcome Back',
                ),
              );
            context.pushReplacementNamed(AppNamedRoutes.root);
          }
        },
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 32,
          ),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.09,
            ),
            const _LoginHeader(),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            const _LoginBodyText(),
            SizedBox(
              height: context.deviceHeight * 0.03,
            ),
            const _LoginEmailTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const _LoginPasswordTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const _LoginForgotPasswordButton(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const _LoginButton(),
            SizedBox(
              height: context.deviceHeight * 0.03,
            ),
            const _LoginOtherOptionsTextButton(),
          ],
        ),
      ),
    );
  }
}
