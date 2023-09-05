part of '../account_settings.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 24,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Text(
          AppTranslations.accountSettings.logoutBottomSheetHeader,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        Text(
          AppTranslations.accountSettings.logoutBottomSheetBody,
          style: context.theme.dialogTheme.contentTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        FilledButton(
          onPressed: () => context
            ..read<AuthenticationBloc>().add(const AppLogoutRequested())
            ..pop(),
          child: Text(AppTranslations.accountSettings.yesLogout),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(AppTranslations.accountSettings.dontLogout),
        ),
      ],
    );
  }
}
