import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/appearance/widgets/appearnce_radios_list.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
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
          Text(
            AppTranslations.themeHeader,
            style: TextStyle(
              fontFamily: AppFonts.medium(context),
              color: Theme.of(context).primaryColor,
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const AppearanceRadiosList(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          Text(
            AppTranslations.themeHint,
            style: TextStyle(
              fontFamily: AppFonts.light(context),
              color: Theme.of(context).hintColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
