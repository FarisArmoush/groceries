part of '../grocery_list_settings.dart';

class DeleteGroceryListButton extends StatelessWidget {
  const DeleteGroceryListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showModalBottomSheet<void>(
        showDragHandle: true,
        elevation: 0,
        context: context,
        builder: (context) => const DeleteGroceryListBottomSheet(),
      ),
      child: Text(AppTranslations.groceryListSettings.deleteList),
    );
  }
}

class DeleteGroceryListBottomSheet extends StatelessWidget {
  const DeleteGroceryListBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      children: [
        Text(
          AppTranslations
              .groceryListSettings.deleteGroceryListBottomSheetHeader,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          AppTranslations.groceryListSettings.deleteGroceryListBottomSheetBody,
          style: context.theme.dialogTheme.contentTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        FilledButton(
          onPressed: () {
            // TODO(FarisArmoush): throws error; bloc is used in bottomSheet.
            context.read<DeleteListBloc>().add(
                  const DeleteListEvent.delete(
                    listId: '',
                  ),
                );
            context.pop();
          },
          child: Text(
            AppTranslations.groceryListSettings.yesDeleteList,
          ),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(
            AppTranslations.groceryListSettings.dontDeleteList,
          ),
        ),
      ],
    );
  }
}
