import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/verify_user/cubit/verify_user_cubit.dart';
import 'package:groceries/presentation/modules/verify_user/widgets/failed_to_send_verification_email.dart';
import 'package:groceries/presentation/modules/verify_user/widgets/loading_sending_verification_email.dart';
import 'package:groceries/presentation/modules/verify_user/widgets/send_verification_email_button.dart';
import 'package:groceries/presentation/modules/verify_user/widgets/verification_email_sent_successfully.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class VerifyUserForm extends StatelessWidget {
  const VerifyUserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.verifyAccount),
      ),
      body: BlocBuilder<VerifyUserCubit, VerifyUserState>(
        builder: (context, state) {
          if (state is VerificationLoading) {
            return const LoadingSendingVerificationEmail();
          }
          if (state is VerifiedSuccessfully) {
            return const VerificationEmailSentSuccessfully();
          }
          if (state is VerificationFailed) {
            return const FailedToSendVerificationEmail();
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.svg.illBirdWatching.svg(
                  height: context.deviceHeight * 0.3,
                ),
                SizedBox(
                  height: context.deviceHeight * 0.03,
                ),
                Text(
                  AppTranslations.sendVerificationEmail,
                  style: context.theme.dialogTheme.titleTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: context.deviceHeight * 0.03,
                ),
                const SendVerificationEmailButton(),
              ],
            ),
          );
        },
      ),
    );
  }
}
