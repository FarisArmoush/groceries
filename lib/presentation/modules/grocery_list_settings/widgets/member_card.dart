part of '../grocery_list_settings.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedImage(
        width: context.deviceWidth * 0.12,
      ),
      title: const Text('Faris Armoush'),
      subtitle: const Text(
        'fariskarmoush@gmail.com',
      ),
      trailing: IconButton(
        onPressed: () => showModalBottomSheet<CancelBottomSheet>(
          showDragHandle: true,
          elevation: 0,
          context: context,
          builder: (context) => CancelBottomSheet(
            title: AppTranslations.groceryListSettings.removeMemberFromList,
            onCancel: () => context.pop(),
          ),
        ),
        icon: Assets.svg.icUserX.svg(
          color: context.theme.hintColor,
        ),
      ),
    );
  }
}
