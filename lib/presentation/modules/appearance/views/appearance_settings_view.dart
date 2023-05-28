import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/appearance/widgets/appearance_header_text.dart';
import 'package:groceries/presentation/modules/appearance/widgets/appearance_hint_text.dart';
import 'package:groceries/presentation/modules/appearance/widgets/appearnce_radios_list.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class AppearanceSettingsView extends StatelessWidget {
  const AppearanceSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslations.theme,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          const AppearanceHeaderText(),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const AppearanceRadiosList(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const AppearanceHintText(),
        ],
      ),
    );
  }
}
