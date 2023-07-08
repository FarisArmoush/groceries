import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class CancelForgotPasswordDialog extends StatelessWidget {
  const CancelForgotPasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        AppTranslations.cancelForgotPassowordDialogHeader,
        textAlign: TextAlign.center,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 16,
      ),
      children: [
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        FilledButton(
          onPressed: () => context
            ..pop()
            ..pop(),
          child: Text(AppTranslations.yesCancelForgotPassword),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(AppTranslations.dontCancelForgotPassword),
        ),
      ],
    );
  }
}
