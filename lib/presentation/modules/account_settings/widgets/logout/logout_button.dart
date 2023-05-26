import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/logout/logout_bottom_sheet.dart';
import 'package:groceries/presentation/widgets/app_snackbars/app_snack_bars.dart';
import 'package:groceries/presentation/widgets/buttons/tile_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
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
        } else {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              AppSnackBars.error(
                error: 'Failed to logout.\nTry again later',
              ),
            );
        }
      },
      child: TileButton(
        title: AppTranslations.logout,
        icon: Assets.svg.icLogout.path,
        color: Theme.of(context).primaryColorLight,
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
