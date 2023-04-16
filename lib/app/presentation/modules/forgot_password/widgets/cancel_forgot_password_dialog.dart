import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/presentation/widgets/app_dialog_title.dart';
import 'package:groceries/app/presentation/widgets/buttons/app_button.dart';

class CancelForgotPasswordDialog extends StatelessWidget {
  const CancelForgotPasswordDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const AppDialogTitle(
        title: 'Are you sure you want to cancel',
      ),
      children: [
        AppButton(
          text: 'Yes, Go Back',
          buttonStyle: AppButtonStyles.red(context),
          onTap: () => context
            ..pop()
            ..pop(),
        ),
        AppButton(
          text: "No, Don't Cancel",
          buttonStyle: AppButtonStyles.transparent(context),
          onTap: () {},
        ),
      ],
    );
  }
}
