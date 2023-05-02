import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/localization/app_translations.dart';

class CancelListCreationDialog extends StatelessWidget {
  const CancelListCreationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AppTranslations.youSureYouWantToCancelListCreation,
      ),
      content: Text(
        AppTranslations.listCreationCancelDialogBody,
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
