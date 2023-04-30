import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/localization/app_translations.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/app/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/app/presentation/widgets/app_logo.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';
import 'package:groceries/app/presentation/widgets/buttons/other_options_text_button.dart';
part '__register_button.dart';
part '__register_confirm_password_text_field.dart';
part '__register_display_name_text_field.dart';
part '__register_email_text_field.dart';
part '__register_password_text_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.errorMessage ?? 'Authentication Failure',
              ),
            ),
          );
        }

        if (state.status.isSubmissionSuccess) {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Welcome Back',
              ),
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
            height: size.height * 0.065,
          ),
          const AppLogo(),
          SizedBox(
            height: size.height * 0.04,
          ),
          Text(
            AppTranslations.register,
            style: AppTextStyles.poppinsSemiBold(
              color: Theme.of(context).primaryColorLight,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          Text(
            AppTranslations.createYourAccount,
            style: AppTextStyles.poppinsSemiBold(
              color: Theme.of(context).primaryColor.withOpacity(0.8),
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          const _RegisterDisplayNameTextField(),
          SizedBox(
            height: size.height * 0.02,
          ),
          const _RegisterEmailTextField(),
          SizedBox(
            height: size.height * 0.02,
          ),
          const _RegisterPasswordTextField(),
          SizedBox(
            height: size.height * 0.02,
          ),
          const _RegisterConfirmPasswordTextField(),
          SizedBox(
            height: size.height * 0.04,
          ),
          const _RegisterButton(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OtherOptionTextButton(
            upperText: AppTranslations.alreadyHaveAnAccount,
            lowerText: AppTranslations.loginNow,
            onTap: () => context.pushNamed(AppNamedRoutes.login),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
        ],
      ),
    );
  }
}
