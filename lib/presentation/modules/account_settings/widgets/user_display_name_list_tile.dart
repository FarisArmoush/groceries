part of '../account_settings.dart';

class UserDisplayNameListTile extends StatelessWidget {
  const UserDisplayNameListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final displayName = context.read<UserDataCubit>().state.displayName;
    return ListTile(
      title: Text(AppTranslations.general.username),
      subtitle: Text(displayName ?? ''),
      trailing: Assets.svg.icEdit.svg(
        colorFilter: ColorFilter.mode(
          context.theme.hintColor,
          BlendMode.srcIn,
        ),
      ),
      onTap: () => context.pushNamed(AppNamedRoutes.updateDisplayName),
    );
  }
}
