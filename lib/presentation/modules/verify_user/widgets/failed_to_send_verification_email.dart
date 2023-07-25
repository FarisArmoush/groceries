import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class FailedToSendVerificationEmail extends StatelessWidget {
  const FailedToSendVerificationEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.svg.illError.svg(
          height: context.deviceHeight * 0.3,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        Text(
          AppTranslations.failedToSendVerificationEmail,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    ).centered().symmetricPadding(
          vertical: 12,
          horizontal: 24,
        );
  }
}
