import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/welcome/widgets/welcome_view_body_text.dart';
import 'package:groceries/presentation/modules/welcome/widgets/welcome_view_header_text.dart';
import 'package:groceries/presentation/widgets/buttons/app_filled_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      top: false,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.09,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: size.height * 0.15,
            ),
            const WelcomeViewHeaderText(),
            SizedBox(
              height: size.height * 0.065,
            ),
            const WelcomeViewBodyText(),
            SizedBox(
              height: size.height * 0.09,
            ),
            FilledButton(
              onPressed: () => context.pushReplacementNamed(
                AppNamedRoutes.register,
              ),
              child: Text(AppTranslations.register),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            OutlinedButton(
              onPressed: () => context.pushReplacementNamed(
                AppNamedRoutes.login,
              ),
              child: Text(AppTranslations.login),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            AppFilledButton(
              onPressed: () {},
              child: const Text(
                'Done',
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const AppFilledButton(
              onPressed: null,
              child: Text('Finish'),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            AppFilledButton.icon(
              onPressed: () {},
              label: const Text('Icon Button'),
              icon: Assets.svg.icAlertTriangle.svg(),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
