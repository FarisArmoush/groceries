import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';

class CancelListCreationDialog extends StatelessWidget {
  const CancelListCreationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AppTranslations.youSureYouWantToCancelListCreation,
        textAlign: TextAlign.center,
      ),
      content: Text(
        AppTranslations.listCreationCancelDialogBody,
        textAlign: TextAlign.center,
      ),
      actions: [
        OutlinedButton(
          onPressed: () => context
            ..pop()
            ..pop(),
          child: Text(
            AppTranslations.yesCancel,
          ),
        ),
        FilledButton(
          onPressed: () => context.pop(),
          child: Text(
            AppTranslations.noDontCancel,
          ),
        ),
      ],
    );
  }
}