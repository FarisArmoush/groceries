import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';

class WelcomeViewHeaderText extends StatelessWidget {
  const WelcomeViewHeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text =
        context.watch<RemoteConfigCubit>().remoteConfigRepo.chooseAuthHeader;
    return Text(
      text,
      textAlign: TextAlign.start,
      style: AppTextStyles.poppinsBold(
        color: Theme.of(context).primaryColor,
        fontSize: 30,
      ),
    );
  }
}
