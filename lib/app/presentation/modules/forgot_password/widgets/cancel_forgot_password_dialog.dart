import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/presentation/widgets/app_dialog_title.dart';

class CancelForgotPasswordDialog extends StatelessWidget {
  const CancelForgotPasswordDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const AppDialogTitle(
        title: 'Are you sure you want to cancel',
      ),
      children: [
        FilledButton(
          onPressed: () => context
            ..pop()
            ..pop(),
          child: const Text('Yes, Go Back'),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: const Text('No, Dont Cancel'),
        ),
      ],
    );
  }
}
