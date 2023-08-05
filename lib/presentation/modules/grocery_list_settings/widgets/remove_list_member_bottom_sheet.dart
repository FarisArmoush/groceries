part of '../grocery_list_settings.dart';

class RemoveListMemberBottomSheet extends StatelessWidget {
  const RemoveListMemberBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      showDragHandle: false,
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        return ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 24,
          ),
          children: [
            Text(
              AppTranslations.removeMemberFromList,
              style: context.theme.dialogTheme.titleTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: Text(AppTranslations.yesRemoveMember),
            ),
            OutlinedButton(
              onPressed: () => context.pop(),
              child: Text(AppTranslations.dontRemoveMember),
            ),
          ],
        );
      },
    );
  }
}
