part of '../account_settings.dart';

class IsUserVerifiedListTile extends StatelessWidget {
  const IsUserVerifiedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final isVerified = context.read<UserDataCubit>().emailVerified;
    return ListTile(
      title: Text(AppTranslations.accountSettings.verified),
      subtitle: isVerified == true
          ? Text(AppTranslations.accountSettings.verified)
          : null,
      trailing: isVerified == true
          ? Assets.svg.icVerified.svg(color: Colors.green)
          : Assets.svg.icBadgeAlert.svg(color: Colors.red),
      onTap: () => isVerified == true
          ? showIsVerifiedBottomSheet(context)
          : context.pushNamed(AppNamedRoutes.verifyAccount),
    );
  }

  void showIsVerifiedBottomSheet(BuildContext context) =>
      showModalBottomSheet<YourAccountIsVerifiedBottomSheet>(
        context: context,
        showDragHandle: true,
        elevation: 0,
        builder: (context) => const YourAccountIsVerifiedBottomSheet(),
      );
}

class YourAccountIsVerifiedBottomSheet extends StatelessWidget {
  const YourAccountIsVerifiedBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      children: [
        Assets.svg.illCelebrating.svg(
          height: context.deviceHeight * 0.2,
        ),
        SizedBox(
          height: context.deviceHeight * 0.03,
        ),
        Text(
          AppTranslations.verifyAccount.yourAccountIsVerified,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.03,
        ),
      ],
    );
  }
}
