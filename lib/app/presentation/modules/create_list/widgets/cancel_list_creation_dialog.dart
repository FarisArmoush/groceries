import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/localization/app_translations.dart';
import 'package:groceries/app/presentation/widgets/dialog_widgets/app_dialog_content_text.dart';
import 'package:groceries/app/presentation/widgets/dialog_widgets/app_dialog_title.dart';

class CancelListCreationDialog extends StatelessWidget {
  const CancelListCreationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: AppDialogTitle(
        title: AppTranslations.youSureYouWantToCancelListCreation,
      ),
      content: AppDialogContentText(
        text: AppTranslations.listCreationCancelDialogBody,
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
