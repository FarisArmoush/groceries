import 'package:flutter/material.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/presentation/modules/settings/widgets/appearnce_radios_list.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';

class AppearanceSettingsView extends StatelessWidget {
  const AppearanceSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          _textPadding(
            Text(
              AppTranslations.themeHeader,
              style: AppTextStyles.poppinsMedium(
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
              style: AppTextStyles.poppinsLight(
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
