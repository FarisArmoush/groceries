import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class ResetPasswordSentSuccessfullyView extends StatelessWidget {
  const ResetPasswordSentSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            height: size.height * 0.01,
          ),
          Assets.svg.illMail.svg(
            height: size.height * 0.3,
          ),
          SizedBox(
            height: size.height * 0.045,
          ),
          Text(
            'Check your Email!',
            style: AppTextStyles.bold(
              context: context,
              color: Theme.of(context).primaryColorLight,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            'We have sent a password reset instrucion to your email',
            style: AppTextStyles.regular(
              context: context,
              color: Theme.of(context).primaryColor,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      bottomSheet: SizedBox(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 24,
          ),
          child: ElevatedButton(
            onPressed: () => context.pushReplacementNamed(AppNamedRoutes.login),
            child: Text(AppTranslations.login),
          ),
        ),
      ),
    );
  }
}
