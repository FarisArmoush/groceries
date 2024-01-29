import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/verify_user/bloc/verify_user_bloc.dart';
import 'package:groceries/presentation/modules/verify_user/widgets/failed_to_send_verification_email.dart';
import 'package:groceries/presentation/modules/verify_user/widgets/loading_sending_verification_email.dart';
import 'package:groceries/presentation/modules/verify_user/widgets/verification_email_sent_successfully.dart';
import 'package:groceries/presentation/modules/verify_user/widgets/verify_user_initial_body.dart';

class VerifyUserView extends StatelessWidget {
  const VerifyUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.verifyAccount.verifyAccount),
      ),
      body: BlocBuilder<VerifyUserBloc, VerifyUserState>(
        builder: (context, state) => state.status.when(
          initial: () => const VerifyUserInitialBody(),
          loading: () => const LoadingSendingVerificationEmail(),
          success: () => const VerificationEmailSentSuccessfully(),
          failure: (_) => const FailedToSendVerificationEmail(),
        ),
      ),
    );
  }
}
