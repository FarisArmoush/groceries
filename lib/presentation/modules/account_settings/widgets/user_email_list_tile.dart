import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/hard_coded_extension.dart';

class UserEmailListTile extends StatelessWidget {
  const UserEmailListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserDataCubit>().state;

    final email = user.email ?? '';
    final isUserVerified = user.emailVerified ?? false;
    return ListTile(
      title: Text(AppTranslations.general.email),
      subtitle: Text(email),
      trailing: Assets.icons.edit.svg(
        colorFilter: ColorFilter.mode(
          context.theme.hintColor,
          BlendMode.srcIn,
        ),
      ),
      onTap: isUserVerified
          ? () => context.pushNamed(AppRoute.updateEmail.name)
          : () => showModalBottomSheet<void>(
                context: context,
                showDragHandle: true,
                elevation: 0,
                builder: (context) => const VerifyToUpdateEmailBottomSheet(),
              ),
    );
  }
}

class VerifyToUpdateEmailBottomSheet extends StatelessWidget {
  const VerifyToUpdateEmailBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: AppPaddings.bottomSheet(context),
      children: [
        Assets.illustrations.writing.svg(
          height: context.deviceHeight * 0.25,
        ),
        SizedBox(
          height: context.deviceHeight * 0.05,
        ),
        Text(
          'You need to verify your account in order to change your email.'
              .hardCoded,
          style: context.theme.dialogTheme.titleTextStyle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.03,
        ),
      ],
    );
  }
}
