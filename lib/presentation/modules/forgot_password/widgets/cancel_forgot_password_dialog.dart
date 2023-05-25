import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class CancelForgotPasswordDialog extends StatelessWidget {
  const CancelForgotPasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        AppTranslations.cancelForgotPassowordDialogHeader,
        textAlign: TextAlign.center,
      ),
      // content: Text(
      //   AppTranslations.cancelForgotPassowordDialogBody,
      //   textAlign: TextAlign.center,
      // ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 16,
      ),
      children: [
        Text(
          AppTranslations.cancelForgotPassowordDialogBody,
          style: Theme.of(context).dialogTheme.contentTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        FilledButton(
          onPressed: () => context
            ..pop()
            ..pop(),
          child: Text(AppTranslations.yesCancel),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(AppTranslations.noDontCancel),
        ),
      ],
    );
  }
}
