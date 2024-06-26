import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/extensions/padding_extensions.dart';
import 'package:groceries/presentation/router/app_route.dart';
import 'package:groceries_theme/app_theme.dart';

class ResetPasswordSentSuccessfullyView extends StatelessWidget {
  const ResetPasswordSentSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
      ),
      body: ListView(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          Assets.illustrations.mail.svg(
            height: context.deviceHeight * 0.3,
          ),
          SizedBox(
            height: context.deviceHeight * 0.045,
          ),
          Text(
            Translations.forgotPassword.successHeader,
            style: TextStyle(
              fontWeight: AppFontWeights.bold,
              color: context.theme.primaryColorLight,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          Text(
            Translations.forgotPassword.successBody,
            style: TextStyle(
              fontWeight: AppFontWeights.regular,
              color: context.theme.primaryColor,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      bottomSheet: SizedBox(
        width: context.deviceWidth,
        child: ElevatedButton(
          onPressed: () => context.pushReplacementNamed(AppRoute.login.named),
          child: Text(Translations.login.login),
        ),
      ).symmetricPadding(
        vertical: 16,
        horizontal: 24,
      ),
    );
  }
}
