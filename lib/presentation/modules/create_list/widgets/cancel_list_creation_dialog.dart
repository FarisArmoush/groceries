part of '../create_list.dart';

class CancelListCreationDialog extends StatelessWidget {
  const CancelListCreationDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AppTranslations.createGroceryList.listCreationCancelDialogHeader,
        textAlign: TextAlign.center,
      ),
      content: Text(
        AppTranslations.createGroceryList.listCreationCancelDialogBody,
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
              AppTranslations.createGroceryList.yesCancelListCreation,
            ),
          ),
        ),
        SizedBox(
          width: context.deviceWidth,
          child: FilledButton(
            onPressed: () => context.pop(),
            child: Text(
              AppTranslations.createGroceryList.dontCancelListCreation,
            ),
          ),
        ),
      ],
    );
  }
}
