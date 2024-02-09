import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/your_account_is_verified_bottom_sheet.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class IsUserVerifiedListTile extends StatelessWidget {
  const IsUserVerifiedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final isVerified =
        context.read<UserDataCubit>().state.emailVerified ?? false;
    return ListTile(
      title: Text(AppTranslations.accountSettings.verified),
      subtitle: isVerified == true
          ? Text(AppTranslations.accountSettings.verified)
          : null,
      trailing: isVerified == true
          ? Assets.icons.verified.svg(
              colorFilter: const ColorFilter.mode(
                Colors.green,
                BlendMode.srcIn,
              ),
            )
          : Assets.icons.alertBadge.svg(
              colorFilter: const ColorFilter.mode(
                AppColors.lightRed,
                BlendMode.srcIn,
              ),
            ),
      onTap: () => isVerified == true
          ? showModalBottomSheet<void>(
              context: context,
              showDragHandle: true,
              elevation: 0,
              builder: (context) => const YourAccountIsVerifiedBottomSheet(),
            )
          : context.pushNamed(AppNamedRoutes.verifyAccount),
    );
  }
}
