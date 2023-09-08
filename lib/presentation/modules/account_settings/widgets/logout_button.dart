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
        title: AppTranslations.accountSettings.logout,
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
