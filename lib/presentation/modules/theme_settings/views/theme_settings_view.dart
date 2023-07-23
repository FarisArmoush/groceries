import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/theme_settings/widgets/theme_header_text.dart';
import 'package:groceries/presentation/modules/theme_settings/widgets/theme_hint_text.dart';
import 'package:groceries/presentation/modules/theme_settings/widgets/theme_radios_list.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class ThemeSettingsView extends StatelessWidget {
  const ThemeSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInAnimation(
          duration: const Duration(milliseconds: 550),
          child: Text(AppTranslations.theme),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          const ThemeHeaderText(),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const ThemeRadiosList(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const ThemeHintText(),
        ],
      ),
    );
  }
}
