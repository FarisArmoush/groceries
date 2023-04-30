import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/localization/app_translations.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/app/presentation/modules/profile/widgets/logout_dialog.dart';
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
              const SnackBar(
                content: Text(
                  'Logged out sucessfully',
                ),
              ),
            );
          context.pushReplacementNamed(AppNamedRoutes.welcome);
        } else {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text(
                  'Failed bruh',
                ),
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
