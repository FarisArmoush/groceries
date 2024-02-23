import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';
import 'package:groceries/presentation/modules/register/widgets/register_body_text.dart';
import 'package:groceries/presentation/modules/register/widgets/register_button.dart';
import 'package:groceries/presentation/modules/register/widgets/register_confirm_password_text_field.dart';
import 'package:groceries/presentation/modules/register/widgets/register_display_name_text_field.dart';
import 'package:groceries/presentation/modules/register/widgets/register_email_text_field.dart';
import 'package:groceries/presentation/modules/register/widgets/register_header_text.dart';
import 'package:groceries/presentation/modules/register/widgets/register_password_text_field.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';
import 'package:groceries/presentation/widgets/other_options_text_button.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

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
              SwitchAuthenticationOptionTextButton(
                upperText: AppTranslations.register.alreadyHaveAnAccount,
                lowerText: AppTranslations.register.loginNow,
                onTap: () => context.pushNamed(AppRoute.login.name),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _listener(BuildContext context, RegisterState state) {
    if (state.status.isFailure) {
      context.pop();
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.error(
            error: state.errorMessage ?? 'Authentication Failure',
          ),
        );
    }

    if (state.status.isSuccess) {
      context.pop();
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.success(
            message: 'Account Created Successfully',
          ),
        );
      context.pushReplacementNamed(AppRoute.root.name);
    }
    if (state.status.isInProgress) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (context) => const AppLoadingIndicator(
          type: AppLoadingIndicatorType.linear,
        ),
      );
    }
  }
}
