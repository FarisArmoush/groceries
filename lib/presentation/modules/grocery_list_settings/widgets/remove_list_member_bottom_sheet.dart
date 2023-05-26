import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

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
              style: Theme.of(context).dialogTheme.titleTextStyle,
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
