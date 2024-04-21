import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/your_account_is_verified_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries_theme/app_theme.dart';

class IsUserVerifiedListTile extends StatelessWidget {
  const IsUserVerifiedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final isVerified =
        context.read<UserDataCubit>().state.user?.isVerified ?? false;
    return ListTile(
      title: Text(Translations.accountSettings.verified),
      subtitle: isVerified ? Text(Translations.accountSettings.verified) : null,
      trailing: isVerified
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
      onTap: () => isVerified
          ? showModalBottomSheet<void>(
              context: context,
              showDragHandle: true,
              elevation: 0,
              builder: (context) => const YourAccountIsVerifiedBottomSheet(),
            )
          : context.pushNamed(AppRoute.verifyAccount.name),
    );
  }
}
