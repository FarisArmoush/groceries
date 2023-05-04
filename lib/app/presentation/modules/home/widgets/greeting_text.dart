import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';

class GreetingText extends StatelessWidget {
  const GreetingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayName =
        context.watch<AuthBloc>().authRepo.currentUser!.displayName;

    return RichText(
      text: TextSpan(
        text: '${AppTranslations.homeGreeting} ',
        style: AppTextStyles.poppinsSemiBold(
          color: Theme.of(context).primaryColor,
          fontSize: 20,
        ),
        children: <TextSpan>[
          TextSpan(
            text: displayName,
            style: AppTextStyles.poppinsSemiBold(
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
