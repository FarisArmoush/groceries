import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/presentation/widgets/app_snackbars/app_snack_bars.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/presentation/widgets/buttons/other_options_text_button.dart';
import 'package:groceries/presentation/widgets/buttons_loading_indicator.dart';
import 'package:groceries/presentation/widgets/disabled_button_style.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

part '__register_body_text.dart';
part '__register_button.dart';
part '__register_confirm_password_text_field.dart';
part '__register_display_name_text_field.dart';
part '__register_email_text_field.dart';
part '__register_header.dart';
part '__register_password_text_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<RegisterCubit, RegisterState>(
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
            height: size.height * 0.09,
          ),
          const _RegisterHeader(),
          SizedBox(
            height: size.height * 0.01,
          ),
          const _RegisterBodyText(),
          SizedBox(
            height: size.height * 0.04,
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
        ],
      ),
    );
  }
}
