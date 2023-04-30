import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/localization/app_translations.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/modules/login/cubit/login_cubit.dart';
import 'package:groceries/app/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/app/presentation/widgets/app_logo.dart';
import 'package:groceries/app/presentation/widgets/app_snackbars/app_snack_bars.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';
import 'package:groceries/app/presentation/widgets/buttons/other_options_text_button.dart';
import 'package:groceries/app/presentation/widgets/disabled_button_style.dart';
import 'package:groceries/gen/assets.gen.dart';
part '__login_password_text_field.dart';
part '__login_email_text_field.dart';
part '__login_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<LoginCubit, LoginState>(
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
            height: size.height * 0.075,
          ),
          const AppLogo(),
          SizedBox(
            height: size.height * 0.04,
          ),
          Text(
            AppTranslations.login,
            style: AppTextStyles.poppinsSemiBold(
              color: Theme.of(context).primaryColorLight,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: size.height * 0.045,
          ),
          Text(
            AppTranslations.loginToYourAccount,
            style: AppTextStyles.poppinsSemiBold(
              color: Theme.of(context).primaryColor.withOpacity(0.8),
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: size.height * 0.029,
          ),
          const _LoginEmailTextField(),
          SizedBox(
            height: size.height * 0.015,
          ),
          const _LoginPasswordTextField(),
          SizedBox(
            height: size.height * 0.01,
          ),
          TextButton(
            child: Text(
              AppTranslations.forgotYourPassword,
            ),
            onPressed: () => context.pushNamed(AppNamedRoutes.forgotPassword),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          const _LoginButton(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OtherOptionTextButton(
            upperText: AppTranslations.dontHaveAnAccount,
            lowerText: AppTranslations.registerNow,
            onTap: () => context.pushReplacementNamed(AppNamedRoutes.register),
          ),
        ],
      ),
    );
  }
}
