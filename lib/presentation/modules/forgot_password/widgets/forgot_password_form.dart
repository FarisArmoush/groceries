import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/cancel_forgot_password_dialog.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/app_snackbars/app_snack_bars.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

part '__email_text_field.dart';
part '__send_button.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          context.pushReplacementNamed(
            AppNamedRoutes.resetPasswordSentSuccessfully,
          );
        }
        if (state.status.isSubmissionFailure) {
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(
            AppSnackBars.error(
              error: state.errorMessage ?? 'Failed to send',
            ),
          );
        }
        if (state.status.isSubmissionInProgress) {
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
          appBar: AppBar(
            leading: BackButton(
              onPressed: () => showDialog<CancelForgotPasswordDialog>(
                context: context,
                builder: (context) => const CancelForgotPasswordDialog(),
              ),
            ),
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: size.width * 0.02,
              ),
              Text(
                AppTranslations.forgotYourPassword,
                style: AppTextStyles.semiBold(
                  context: context,
                  color: Theme.of(context).primaryColorLight,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                AppTranslations.forgotPasswordBody,
                style: AppTextStyles.regular(
                  context: context,
                  color: Theme.of(context).primaryColor,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              const _EmailTextField(),
            ],
          ),
          bottomSheet: const _SendButton(),
        ),
      ),
    );
  }
}
