import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_image.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_app_ui/app_theme.dart';

class UserDataBox extends StatelessWidget {
  const UserDataBox({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserDataCubit>().state;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const UserImage(),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        SelectableText(
          user.displayName ?? '',
          style: TextStyle(
            fontWeight: AppFontWeights.medium,
            color: context.theme.primaryColor,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.005,
        ),
        SelectableText(
          user.email ?? '',
          style: TextStyle(
            fontWeight: AppFontWeights.light,
            color: context.theme.hintColor,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
