import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class UserDisplayNameListTile extends StatelessWidget {
  const UserDisplayNameListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final displayName = context.read<UserDataCubit>().state.user?.name ?? '';
    return ListTile(
      title: Text(Translations.general.username),
      subtitle: Text(displayName),
      trailing: Assets.icons.edit.svg(
        colorFilter: ColorFilter.mode(
          context.theme.hintColor,
          BlendMode.srcIn,
        ),
      ),
      onTap: () => context.pushNamed(AppRoute.updateDisplayName.named),
    );
  }
}
