import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/router/app_route.dart';
import 'package:groceries/presentation/blocs/logout/logout_bloc.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/logout_bottom_sheet.dart';
import 'package:groceries/presentation/modules/root/bloc/root_navigation_bloc.dart';
import 'package:groceries/presentation/widgets/app_list_tile_button.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutBloc, LogoutState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: _listener,
      child: AppListTileButton(
        title: Translations.accountSettings.logout,
        icon: Assets.icons.logout.path,
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

  void _listener(BuildContext context, LogoutState state) {
    state.status.whenOrNull(
      failure: (error) => ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          AppSnackBars.error(
            error: Translations.settings.logoutFailed,
          ),
        ),
      success: () {
        context.read<RootNavigationBloc>().add(
              const RootNavigationEvent.navigateToIndex(0),
            );
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            AppSnackBars.informative(
              message: Translations.settings.logoutSuccess,
            ),
          );
        context.pushReplacementNamed(AppRoute.welcome.named);
      },
    );
  }
}
