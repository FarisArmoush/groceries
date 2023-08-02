import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_image/user_image.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class UserDataBox extends StatelessWidget {
  const UserDataBox({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthBloc>().authenticationRepository.currentUser;
    return DownFadeInAnimation(
      duration: 500.milliseconds,
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const UserImage(),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          FadeInAnimation(
            child: SelectableText(
              user?.displayName ?? '',
              style: TextStyle(
                fontFamily: AppFonts.medium(context),
                color: context.theme.primaryColor,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.005,
          ),
          FadeInAnimation(
            child: SelectableText(
              user?.email ?? '',
              style: TextStyle(
                fontFamily: AppFonts.light(context),
                color: context.theme.hintColor,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
