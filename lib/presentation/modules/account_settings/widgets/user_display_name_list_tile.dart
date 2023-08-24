part of '../account_settings.dart';

class UserDisplayNameListTile extends StatelessWidget {
  const UserDisplayNameListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final displayName = context.read<UserCubit>().displayName;
    return ListTile(
      title: Text(AppTranslations.general.username),
      subtitle: Text(displayName ?? ''),
      trailing: Assets.svg.icEdit.svg(color: context.theme.hintColor),
      onTap: () => context.pushNamed(AppNamedRoutes.updateDisplayName),
    );
  }
}
