import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class UserDisplayNameListTile extends StatelessWidget {
  const UserDisplayNameListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final displayName = context
        .read<AuthBloc>()
        .authenticationRepository
        .currentUser
        ?.displayName;
    return ListTile(
      title: Text(AppTranslations.username),
      subtitle: Text(displayName ?? ''),
      trailing: Assets.svg.icEdit.svg(color: context.theme.hintColor),
      onTap: () => context.pushNamed(AppNamedRoutes.updateDisplayName),
    );
  }
}
