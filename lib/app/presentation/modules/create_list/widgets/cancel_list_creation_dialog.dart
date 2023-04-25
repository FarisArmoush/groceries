import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/presentation/widgets/dialog_widgets/app_dialog_content_text.dart';
import 'package:groceries/app/presentation/widgets/dialog_widgets/app_dialog_title.dart';

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
        OutlinedButton(
          onPressed: () => context
            ..pop()
            ..pop(),
          child: const Text('Yes, Cancel'),
        ),
        FilledButton(
          onPressed: () => context.pop(),
          child: const Text('No, Dont Cancel'),
        ),
      ],
    );
  }
}
