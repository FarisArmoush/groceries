import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class GreetingText extends StatelessWidget {
  const GreetingText({super.key});

  @override
  Widget build(BuildContext context) {
    final displayName = context.watch<UserDataCubit>().state.displayName;

    return RichText(
      text: TextSpan(
        text: '${AppTranslations.home.homeGreeting} ',
        style: TextStyle(
          fontWeight: AppFontWeights.semiBold,
          color: context.theme.primaryColor,
          fontSize: 20,
        ),
        children: <TextSpan>[
          TextSpan(
            text: displayName,
            style: TextStyle(
              fontWeight: AppFontWeights.semiBold,
              color: context.theme.primaryColorLight,
              fontSize: 20,
            ),
          ),
          const TextSpan(text: ' !'),
        ],
      ),
    );
  }
}
