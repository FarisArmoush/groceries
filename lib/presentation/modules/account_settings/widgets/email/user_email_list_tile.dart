// ignore_for_file: use_if_null_to_convert_nulls_to_bools
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/email/verify_to_update_email_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class UserEmailListTile extends StatelessWidget {
  const UserEmailListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthBloc>().authenticationRepository.currentUser;
    final email = user?.email;
    final isUserVerified = user?.emailVerified;

    return ListTile(
      title: Text(AppTranslations.email),
      subtitle: Text(email ?? ''),
      trailing: Assets.svg.icEdit.svg(color: context.theme.hintColor),
      // onTap: () => context.pushNamed(AppNamedRoutes.updateEmail),
      onTap: isUserVerified == true
          ? () => context.pushNamed(AppNamedRoutes.updateEmail)
          : () => showModalBottomSheet<VerifyToUpdateEmailBottomSheet>(
                context: context,
                showDragHandle: true,
                elevation: 0,
                builder: (context) => const VerifyToUpdateEmailBottomSheet(),
              ),
    );
  }
}
