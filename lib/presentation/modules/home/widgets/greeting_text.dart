import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

class GreetingText extends StatelessWidget {
  const GreetingText({super.key});

  @override
  Widget build(BuildContext context) {
    final displayName =
        context.watch<AuthBloc>().authRepo.currentUser!.displayName;

    return RichText(
      text: TextSpan(
        text: '${AppTranslations.homeGreeting} ',
        style: TextStyle(
          fontFamily: AppFonts.semiBold(context),
          color: Theme.of(context).primaryColor,
          fontSize: 20,
        ),
        children: <TextSpan>[
          TextSpan(
            text: displayName,
            style: TextStyle(
              fontFamily: AppFonts.semiBold(context),
              color: Theme.of(context).primaryColorLight,
              fontSize: 20,
            ),
          ),
          const TextSpan(text: ' !'),
        ],
      ),
    );
  }
}
