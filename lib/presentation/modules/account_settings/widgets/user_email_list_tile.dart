part of '../account_settings.dart';

class UserEmailListTile extends StatelessWidget {
  const UserEmailListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserDataCubit>().state;

    final email = user.email;
    final isUserVerified = user.emailVerified;

    return ListTile(
      title: Text(AppTranslations.general.email),
      subtitle: Text(email ?? ''),
      trailing: Assets.svg.icEdit.svg(
        colorFilter: ColorFilter.mode(
          context.theme.hintColor,
          BlendMode.srcIn,
        ),
      ),
      onTap: isUserVerified == true
          ? () => context.pushNamed(AppNamedRoutes.updateEmail)
          : () => showModalBottomSheet<void>(
                context: context,
                showDragHandle: true,
                elevation: 0,
                builder: (context) => const VerifyToUpdateEmailBottomSheet(),
              ),
    );
  }
}

class VerifyToUpdateEmailBottomSheet extends StatelessWidget {
  const VerifyToUpdateEmailBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: AppPaddings.bottomSheetPadding(context),
      children: [
        Assets.svg.illWriting.svg(
          height: context.deviceHeight * 0.25,
        ),
        SizedBox(
          height: context.deviceHeight * 0.05,
        ),
        Text(
          'You need to verify your account in order to change your email.',
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
