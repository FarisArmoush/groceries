part of '../account_settings.dart';

class UserEmailListTile extends StatelessWidget {
  const UserEmailListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthBloc>().authenticationRepository.currentUser;
    final email = user?.email;
    final isUserVerified = user?.emailVerified;

    return ListTile(
      title: Text(AppTranslations.email),
      subtitle: Text(email ?? ''),
      trailing: Assets.svg.icEdit.svg(color: context.theme.hintColor),
      // onTap: () => context.pushNamed(AppNamedRoutes.updateEmail),
      onTap: isUserVerified == true
          ? () => context.pushNamed(AppNamedRoutes.updateEmail)
          : () => showModalBottomSheet<VerifyToUpdateEmailBottomSheet>(
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
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
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
