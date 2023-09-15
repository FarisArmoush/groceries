part of '../grocery_list_details.dart';

class ClearGroceryListItemsBottomSheet extends StatelessWidget {
  const ClearGroceryListItemsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          '''
This action will remove all items from your list, are you sure you want to proceed?''',
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.03,
        ),
        FilledButton(
          onPressed: () => context.pop(),
          child: const Text('Yes, Erase all items'),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: const Text("No, Don't erase anything"),
        ),
      ],
    );
  }
}
