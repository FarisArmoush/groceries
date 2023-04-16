import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/presentation/widgets/app_dialog_content_text.dart';
import 'package:groceries/app/presentation/widgets/app_dialog_title.dart';
import 'package:groceries/app/presentation/widgets/buttons/app_button.dart';

class DeleteRecipeDialog extends StatelessWidget {
  const DeleteRecipeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const AppDialogTitle(
        title: 'Are you sure you want to delete this recipe?',
      ),
      content: const AppDialogContentText(
        text: 'if you delete this list, you wont be able to get it back',
      ),
      actions: [
        AppButton(
          text: 'No, Dont Delete!',
          buttonStyle: AppButtonStyles.transparent(context),
          onTap: () => context.pop(),
        ),
        AppButton(
          text: 'Yes, Delete!',
          buttonStyle: AppButtonStyles.red(context),
          onTap: () => context.pop(),
        ),
      ],
    );
  }
}
