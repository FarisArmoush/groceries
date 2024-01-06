part of '../grocery_list_settings.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({required this.userModel, super.key});

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedImage(
        width: context.deviceWidth * 0.12,
      ),
      title: Text(userModel.name ?? 'null'),
      subtitle: Text(userModel.email ?? 'null'),
      trailing: IconButton(
        onPressed: () => showModalBottomSheet<void>(
          showDragHandle: true,
          elevation: 0,
          context: context,
          builder: (context) => CancelBottomSheet(
            title: AppTranslations.groceryListSettings.removeMemberFromList,
            onCancel: () => context.pop(),
          ),
        ),
        icon: Assets.svg.icUserX.svg(
          colorFilter: ColorFilter.mode(
            context.theme.hintColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
