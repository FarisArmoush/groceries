// ignore_for_file: use_if_null_to_convert_nulls_to_bools
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/verification/your_account_is_verified_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class IsUserVerifiedListTile extends StatelessWidget {
  const IsUserVerifiedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final isVerified =
        context.read<FirebaseAuthRepository>().currentUser?.emailVerified;
    return ListTile(
      title: Text(AppTranslations.verified),
      subtitle: isVerified == true ? const Text('Verified') : null,
      trailing: isVerified == true
          ? Assets.svg.icVerified.svg(color: Colors.green)
          : Assets.svg.icBadgeAlert.svg(color: Colors.red),
      onTap: () => isVerified == true
          ? showIsVerifiedBottomSheet(context)
          : context.pushNamed(AppNamedRoutes.verifyAccount),
    );
  }

  void showIsVerifiedBottomSheet(BuildContext context) =>
      showModalBottomSheet<YourAccountIsVerifiedBottomSheet>(
        context: context,
        showDragHandle: true,
        elevation: 0,
        builder: (context) => const YourAccountIsVerifiedBottomSheet(),
      );
}
