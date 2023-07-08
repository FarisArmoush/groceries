import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/email/change_email_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class UserEmailListTile extends StatelessWidget {
  const UserEmailListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final email = context.read<FirebaseAuthRepository>().currentUser?.email;

    return ListTile(
      title: Text(AppTranslations.email),
      subtitle: Text(email ?? ''),
      trailing: Assets.svg.icEdit.svg(color: context.theme.hintColor),
      onTap: () => showModalBottomSheet<ChangeEmailBottomSheet>(
        context: context,
        showDragHandle: true,
        elevation: 0,
        builder: (context) => const ChangeEmailBottomSheet(),
      ),
    );
  }
}