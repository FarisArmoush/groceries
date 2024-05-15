import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/blocs/logout/logout_bloc.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';

class VerificationEmailSentSuccessfully extends StatelessWidget {
  const VerificationEmailSentSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.illustrations.celebrating.svg(
          height: context.deviceHeight * 0.3,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        Text(
          Translations.verifyAccount.successHeader,
          textAlign: TextAlign.center,
          style: context.theme.dialogTheme.titleTextStyle,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          Translations.verifyAccount.successBody,
          textAlign: TextAlign.center,
          style: context.theme.dialogTheme.contentTextStyle,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        FilledButton(
          onPressed: () {
            context
              ..read<LogoutBloc>().add(
                const LogoutEvent.logout(),
              )
              ..pop();
          },
          child: Text(Translations.accountSettings.logout),
        ),
      ],
    ).symmetricPadding(vertical: 12, horizontal: 24);
  }
}
