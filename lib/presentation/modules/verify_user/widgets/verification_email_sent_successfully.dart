import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class VerificationEmailSentSuccessfully extends StatelessWidget {
  const VerificationEmailSentSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.svg.illCelebrating.svg(
              height: context.deviceHeight * 0.2,
            ),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            Text(
              AppTranslations.verificationEmailSentSuccessfullyHeader,
              textAlign: TextAlign.center,
              style: context.theme.dialogTheme.titleTextStyle,
            ),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            Text(
              AppTranslations.verificationEmailSentSuccessfullyBody,
              textAlign: TextAlign.center,
              style: context.theme.dialogTheme.contentTextStyle,
            ),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            FilledButton(
              onPressed: () {
                context
                  ..read<AuthBloc>().add(const AppLogoutRequested())
                  ..pop();
              },
              child: Text(AppTranslations.logout),
            ),
          ],
        ),
      ),
    );
  }
}
