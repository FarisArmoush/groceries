import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';

class MadeByText extends StatelessWidget {
  const MadeByText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final remoteConfigCubit = context.watch<RemoteConfigCubit>();
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Made With Love By',
          style: AppTextStyles.poppinsRegular(
            color: Theme.of(context).primaryColor,
            fontSize: 12,
          ),
        ),
        SizedBox(width: size.width * 0.012),
        GestureDetector(
          onTap: remoteConfigCubit.urlLauncherRepo.launchDevTwitterAccount,
          child: Text(
            'Faris Armoush',
            style: AppTextStyles.poppinsSemiBold(
              color: Theme.of(context).primaryColorDark,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
