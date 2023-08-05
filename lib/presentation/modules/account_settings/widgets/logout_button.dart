part of '../account_settings.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        if (state is Unauthenticated) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              AppSnackBars.informative(
                message: "We'll Miss you.",
              ),
            );
          context.pushReplacementNamed(AppNamedRoutes.welcome);
        }
      },
      child: TileButton(
        title: AppTranslations.logout,
        icon: Assets.svg.icLogout.path,
        color: context.theme.primaryColorLight,
        onTap: () => showModalBottomSheet<LogoutBottomSheet>(
          context: context,
          showDragHandle: true,
          elevation: 0,
          builder: (context) => const LogoutBottomSheet(),
        ),
      ),
    );
  }
}

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
          AppTranslations.logoutBottomSheetHeader,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        Text(
          AppTranslations.logoutBottomSheetBody,
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
          child: Text(AppTranslations.yesLogout),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(AppTranslations.dontLogout),
        ),
      ],
    );
  }
}
