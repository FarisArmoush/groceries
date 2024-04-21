import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/blocs/delete_list/delete_list_bloc.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

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
      child: Text(Translations.groceryListSettings.deleteList),
    );
  }
}

class DeleteGroceryListBottomSheet extends StatelessWidget {
  const DeleteGroceryListBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: AppPaddings.bottomSheet(context),
      children: [
        Text(
          Translations.groceryListSettings.deleteGroceryListBottomSheetHeader,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          Translations.groceryListSettings.deleteGroceryListBottomSheetBody,
          style: context.theme.dialogTheme.contentTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        FilledButton(
          onPressed: () {
            context.read<DeleteListBloc>().add(
                  const DeleteListEvent.delete(
                    listId: '',
                  ),
                );
            context.pop();
          },
          child: Text(
            Translations.groceryListSettings.yesDeleteList,
          ),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(
            Translations.groceryListSettings.dontDeleteList,
          ),
        ),
      ],
    );
  }
}
