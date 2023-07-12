import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/presentation/modules/register/widgets/register_body_text.dart';
import 'package:groceries/presentation/modules/register/widgets/register_button.dart';
import 'package:groceries/presentation/modules/register/widgets/register_confirm_password_text_field.dart';
import 'package:groceries/presentation/modules/register/widgets/register_display_name_text_field.dart';
import 'package:groceries/presentation/modules/register/widgets/register_email_text_field.dart';
import 'package:groceries/presentation/modules/register/widgets/register_header.dart';
import 'package:groceries/presentation/modules/register/widgets/register_other_option_text_button.dart';
import 'package:groceries/presentation/modules/register/widgets/register_password_text_field.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<RegisterCubit, RegisterState>(
        listener: (context, state) {
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
                  message: 'Account Created Successfully',
                ),
              );
            context.pushReplacementNamed(AppNamedRoutes.root);
          }
        },
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 24,
          ),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.09,
            ),
            const RegisterHeader(),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            const RegisterBodyText(),
            SizedBox(
              height: context.deviceHeight * 0.04,
            ),
            const RegisterDisplayNameTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const RegisterEmailTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const RegisterPasswordTextField(),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            const RegisterConfirmPasswordTextField(),
            SizedBox(
              height: context.deviceHeight * 0.04,
            ),
            const RegisterButton(),
            SizedBox(
              height: context.deviceHeight * 0.03,
            ),
            const RegisterOtherOptionTextButton(),
          ],
        ),
      ),
    );
  }
}
