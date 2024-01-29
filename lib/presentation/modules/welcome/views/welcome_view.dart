import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/welcome/widgets/welcome_view_body_text.dart';
import 'package:groceries/presentation/modules/welcome/widgets/welcome_view_header_text.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: context.deviceWidth * 0.09,
        ),
        children: [
          SizedBox(
            height: context.deviceHeight * 0.15,
          ),
          const WelcomeViewHeaderText(),
          SizedBox(
            height: context.deviceHeight * 0.065,
          ),
          const WelcomeViewBodyText(),
          SizedBox(
            height: context.deviceHeight * 0.09,
          ),
          FilledButton(
            child: Text(AppTranslations.register.register),
            onPressed: () {
              context.pushReplacementNamed(AppNamedRoutes.register);
            },
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          OutlinedButton(
            child: Text(AppTranslations.login.login),
            onPressed: () {
              context.pushReplacementNamed(AppNamedRoutes.login);
            },
          ),
        ],
      ),
    );
  }
}
