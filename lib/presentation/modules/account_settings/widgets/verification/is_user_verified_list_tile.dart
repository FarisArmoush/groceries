// ignore_for_file: use_if_null_to_convert_nulls_to_bools

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/verification/send_verification_email_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class IsUserVerifiedListTile extends StatelessWidget {
  const IsUserVerifiedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final isVerified =
        context.read<FirebaseAuthRepository>().currentUser?.emailVerified;

    return ListTile(
      title: Text(AppTranslations.verifed),
      trailing: isVerified == true
          ? Assets.svg.icVerified.svg(
              color: Colors.green,
            )
          : Assets.svg.icVerified.svg(
              color: Theme.of(context).hintColor,
            ),
      subtitle: Text(isVerified == true ? 'Yes' : 'No'),
      onTap: isVerified == true
          ? null
          : () => showModalBottomSheet<SendVerificationEmailBottomSheet>(
                context: context,
                showDragHandle: true,
                elevation: 0,
                builder: (context) => const SendVerificationEmailBottomSheet(),
              ),
    );
  }
}
