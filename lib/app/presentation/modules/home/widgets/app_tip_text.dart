import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';

class AppTipText extends StatelessWidget {
  const AppTipText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = context.watch<RemoteConfigCubit>().remoteConfigRepo.homeHeader;
    return Text(
      text,
      style: AppTextStyles.poppinsMedium(
        color: Theme.of(context).hintColor,
        fontSize: 14,
      ),
    );
  }
}
