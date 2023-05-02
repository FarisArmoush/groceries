import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/localization/app_translations.dart';

class CancelForgotPasswordDialog extends StatelessWidget {
  const CancelForgotPasswordDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Are you sure you want to cancel',
      ),
      content: const Text(
        'lorem ipsum',
      ),
      actions: [
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
