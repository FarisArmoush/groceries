import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';
import 'package:groceries/presentation/modules/register/widgets/register_body_text.dart';
import 'package:groceries/presentation/modules/register/widgets/register_button.dart';
import 'package:groceries/presentation/modules/register/widgets/register_confirm_password_text_field.dart';
import 'package:groceries/presentation/modules/register/widgets/register_display_name_text_field.dart';
import 'package:groceries/presentation/modules/register/widgets/register_email_text_field.dart';
import 'package:groceries/presentation/modules/register/widgets/register_header_text.dart';
import 'package:groceries/presentation/modules/register/widgets/register_other_options_text_button.dart';
import 'package:groceries/presentation/modules/register/widgets/register_password_text_field.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: BlocListener<RegisterBloc, RegisterState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: _listener,
          child: ListView(
            padding: const EdgeInsetsDirectional.all(24),
            children: [
              const RegisterHeaderText(),
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
              const RegisterOtherOptionsTextButton(),
            ],
          ),
        ),
      ),
    );
  }

  void _listener(BuildContext context, RegisterState state) {
    if (state.status.isFailure) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.error(
            error: state.errorMessage ?? Translations.errors.defaultError,
          ),
        );
    }

    if (state.status.isSuccess) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.success(
            message: Translations.register.accountCreatedSuccessfully,
          ),
        );
      context.read<RegisterBloc>().add(const RegisterEvent.resetState());
      context.pushReplacementNamed(AppRoute.root.named);
    }
  }
}
