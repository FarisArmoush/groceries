import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class LoadingSendingVerificationEmail extends StatelessWidget {
  const LoadingSendingVerificationEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppTranslations.verifyAccount.sendingVerificationEmailLoadingMessage,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.05,
        ),
        const AppLoadingIndicator(),
        SizedBox(
          height: context.deviceHeight * 0.025,
        ),
      ],
    ).centered().symmetricPadding(vertical: 12, horizontal: 24);
  }
}
