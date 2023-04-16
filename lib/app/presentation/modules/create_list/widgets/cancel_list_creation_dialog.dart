import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/presentation/widgets/app_dialog_content_text.dart';
import 'package:groceries/app/presentation/widgets/app_dialog_title.dart';
import 'package:groceries/app/presentation/widgets/buttons/app_button.dart';

class CancelListCreationDialog extends StatelessWidget {
  const CancelListCreationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const AppDialogTitle(
        title: 'Are you sure you want to cancel?',
      ),
      content: const AppDialogContentText(
        text: 'If you cancel you will lose all progress in creating this list',
      ),
      actions: [
        AppButton(
          text: 'No, Dont cancel',
          buttonStyle: AppButtonStyles.transparent(context),
          onTap: () => context.pop(),
        ),
        AppButton(
          text: 'Yes, Cancel',
          buttonStyle: AppButtonStyles.red(context),
          onTap: () => context
            ..pop()
            ..pop(),
        ),
      ],
    );
  }
}
