import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/modules/verify_user/widgets/send_verification_email_button.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class VerifyUserInitialBody extends StatelessWidget {
  const VerifyUserInitialBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.illustrations.birdWatching.svg(
            height: context.deviceHeight * 0.3,
          ),
          SizedBox(
            height: context.deviceHeight * 0.03,
          ),
          Text(
            Translations.verifyAccount.sendVerificationEmail,
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
  }
}
