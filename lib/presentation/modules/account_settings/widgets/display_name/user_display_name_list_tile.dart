import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class UserDisplayNameListTile extends StatelessWidget {
  const UserDisplayNameListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final displayName =
        context.read<FirebaseAuthRepository>().currentUser?.displayName;
    return ListTile(
      title: Text(AppTranslations.username),
      subtitle: Text(displayName ?? ''),
      trailing: Assets.svg.icEdit.svg(color: Theme.of(context).hintColor),
      onTap: () => context.pushNamed(AppNamedRoutes.updateDisplayName),
      // onTap: () => showModalBottomSheet<ChangeDisplayNameBottomSheet>(
      //   context: context,
      //   showDragHandle: true,
      //   elevation: 0,
      //   builder: (context) => const ChangeDisplayNameBottomSheet(),
      // ),
    );
  }
}
