import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class UserUsernameListTile extends StatelessWidget {
  const UserUsernameListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final displayName =
        context.read<FirebaseAuthRepository>().currentUser?.displayName;
    return ListTile(
      title: Text(AppTranslations.username),
      subtitle: Text(displayName ?? ''),
      trailing: Assets.svg.icEdit.svg(color: Theme.of(context).hintColor),
      onTap: () {},
    );
  }
}
