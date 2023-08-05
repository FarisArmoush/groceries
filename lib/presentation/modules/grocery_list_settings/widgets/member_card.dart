part of '../grocery_list_settings.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedImage(
        imageUrl:
            'https://letsenhance.io/static/15912da66660b919112b5dfc9f562f6f/f90fb/SC.jpg',
        width: context.deviceWidth * 0.12,
      ),
      title: const Text('Faris Armoush'),
      subtitle: const Text(
        'fariskarmoush@gmail.com',
      ),
      trailing: IconButton(
        onPressed: () => showModalBottomSheet<RemoveListMemberBottomSheet>(
          showDragHandle: true,
          elevation: 0,
          context: context,
          builder: (context) => const RemoveListMemberBottomSheet(),
        ),
        icon: Assets.svg.icUserX.svg(
          color: context.theme.hintColor,
        ),
      ),
    );
  }
}
