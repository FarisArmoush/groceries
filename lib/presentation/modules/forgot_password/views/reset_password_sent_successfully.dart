import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class ResetPasswordSentSuccessfullyView extends StatelessWidget {
  const ResetPasswordSentSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          Assets.svg.illMail.svg(
            height: context.deviceHeight * 0.3,
          ),
          SizedBox(
            height: context.deviceHeight * 0.045,
          ),
          Text(
            'Check your Email!',
            style: TextStyle(
              fontFamily: AppFonts.bold(context),
              color: context.theme.primaryColorLight,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          Text(
            'We have sent a password reset instrucion to your email',
            style: TextStyle(
              fontFamily: AppFonts.regular(context),
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
          onPressed: () => context.pushReplacementNamed(AppNamedRoutes.login),
          child: Text(AppTranslations.login),
        ),
      ).symmetricPadding(
        vertical: 16,
        horizontal: 24,
      ),
    );
  }
}
