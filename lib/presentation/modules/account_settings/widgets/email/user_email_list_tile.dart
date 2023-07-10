// ignore_for_file: use_if_null_to_convert_nulls_to_bools
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class UserEmailListTile extends StatelessWidget {
  const UserEmailListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<FirebaseAuthRepository>().currentUser;
    final email = user?.email;
    final isUserVerified = user?.emailVerified;

    return ListTile(
      title: Text(AppTranslations.email),
      subtitle: Text(email ?? ''),
      trailing: Assets.svg.icEdit.svg(color: context.theme.hintColor),
      // onTap: () => context.pushNamed(AppNamedRoutes.updateEmail),
      onTap: isUserVerified == true
          ? () => context.pushNamed(AppNamedRoutes.updateEmail)
          : () => _showBottomSheet(context),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet<Widget>(
      context: context,
      showDragHandle: true,
      builder: (context) => ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 24,
        ),
        children: [
          Assets.svg.illWriting.svg(
            height: context.deviceHeight * 0.25,
          ),
          SizedBox(
            height: context.deviceHeight * 0.05,
          ),
          Text(
            'You need to verify your account in order to change your email.',
            style: context.theme.dialogTheme.titleTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: context.deviceHeight * 0.03,
          ),
        ],
      ),
    );
  }
}
