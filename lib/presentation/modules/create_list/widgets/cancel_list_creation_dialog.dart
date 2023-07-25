import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class CancelListCreationDialog extends StatelessWidget {
  const CancelListCreationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AppTranslations.listCreationCancelDialogHeader,
        textAlign: TextAlign.center,
      ),
      content: Text(
        AppTranslations.listCreationCancelDialogBody,
        textAlign: TextAlign.center,
      ),
      actions: [
        SizedBox(
          width: context.deviceWidth,
          child: OutlinedButton(
            onPressed: () => context
              ..pop()
              ..pop(),
            child: Text(
              AppTranslations.yesCancelListCreation,
            ),
          ),
        ),
        SizedBox(
          width: context.deviceWidth,
          child: FilledButton(
            onPressed: () => context.pop(),
            child: Text(
              AppTranslations.dontCancelListCreation,
            ),
          ),
        ),
      ],
    );
  }
}
