part of '../account_settings.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutBloc, LogoutState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        state.status.maybeWhen(
          failure: (error) => ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              AppSnackBars.error(
                error: 'Failed to log you out',
              ),
            ),
          success: () {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                AppSnackBars.informative(
                  message: "We'll Miss you.",
                ),
              );

            context.pushReplacementNamed(AppNamedRoutes.welcome);
          },
          orElse: () {},
        );
      },
      child: AppListTileButton(
        title: AppTranslations.accountSettings.logout,
        icon: Assets.svg.icLogout.path,
        color: context.theme.primaryColorLight,
        onTap: () => showModalBottomSheet<void>(
          context: context,
          showDragHandle: true,
          elevation: 0,
          builder: (context) => const LogoutBottomSheet(),
        ),
      ),
    );
  }
}
