import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/localization/app_translations.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/app/presentation/modules/profile/widgets/logout_dialog.dart';
import 'package:groceries/app/presentation/widgets/app_snackbars/app_snack_bars.dart';
import 'package:groceries/app/presentation/widgets/buttons/tile_button.dart';
import 'package:groceries/gen/assets.gen.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Unauthenticated) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              AppSnackBars.informative(
                message: "Logged out, Successfully.\nWe'll Miss you.",
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
        onTap: () {
          showModalBottomSheet<LogoutDialog>(
            enableDrag: false,
            context: context,
            builder: (context) {
              return const LogoutDialog();
            },
          );
        },
        title: AppTranslations.logout,
        icon: Assets.svg.icLogout,
        color: Theme.of(context).primaryColorLight,
      ),
    );
  }
}
