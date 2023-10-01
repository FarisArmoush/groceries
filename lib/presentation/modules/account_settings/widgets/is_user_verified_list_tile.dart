part of '../account_settings.dart';

class IsUserVerifiedListTile extends StatelessWidget {
  const IsUserVerifiedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final isVerified = context.read<UserDataCubit>().state.emailVerified;
    return ListTile(
      title: Text(AppTranslations.accountSettings.verified),
      subtitle: isVerified == true
          ? Text(AppTranslations.accountSettings.verified)
          : null,
      trailing: isVerified == true
          ? Assets.svg.icVerified.svg(color: Colors.green)
          : Assets.svg.icBadgeAlert.svg(color: Colors.red),
      onTap: () => isVerified == true
          ? showModalBottomSheet<void>(
              context: context,
              showDragHandle: true,
              elevation: 0,
              builder: (context) => const YourAccountIsVerifiedBottomSheet(),
            )
          : context.pushNamed(AppNamedRoutes.verifyAccount),
    );
  }
}
