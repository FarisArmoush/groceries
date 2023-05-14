import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/appearance/widgets/appearnce_radios_list.dart';
import 'package:groceries/presentation/widgets/app_bar_title.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class AppearanceSettingsView extends StatelessWidget {
  const AppearanceSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          AppTranslations.theme,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          _textPadding(
            Text(
              AppTranslations.themeHeader,
              style: AppTextStyles.medium(
                context: context,
                color: Theme.of(context).primaryColor,
                fontSize: 12,
              ),
            ),
            size: size,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const AppearanceRadiosList(),
          SizedBox(
            height: size.height * 0.01,
          ),
          _textPadding(
            Text(
              AppTranslations.themeHint,
              style: AppTextStyles.light(
                context: context,
                color: Theme.of(context).hintColor,
                fontSize: 12,
              ),
            ),
            size: size,
          ),
        ],
      ),
    );
  }

  Padding _textPadding(Widget child, {required Size size}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.035,
      ),
      child: child,
    );
  }
}
