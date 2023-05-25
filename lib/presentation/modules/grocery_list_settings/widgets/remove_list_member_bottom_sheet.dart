// TODO: ADD text to remote config. and add doc comments
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
              'Are you sure you want to remove this member from this list?',
              style: Theme.of(context).dialogTheme.titleTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: const Text(
                'Yes, Remove Member',
              ),
            ),
            OutlinedButton(
              onPressed: () => context.pop(),
              child: const Text('No, Keep Member'),
            ),
          ],
        );
      },
    );
  }
}
