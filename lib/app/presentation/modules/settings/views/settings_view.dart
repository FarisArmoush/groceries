import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/presentation/modules/settings/widgets/about_app_settings_box.dart';
import 'package:groceries/app/presentation/modules/settings/widgets/general_settings_box.dart';
import 'package:groceries/app/presentation/modules/settings/widgets/made_by_text.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsetsDirectional.all(16),
        children: [
          const GeneralSettingsBox(),
          SizedBox(
            height: size.height * 0.02,
          ),
          const AboutAppSettingsBox(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text(
            'Groceries',
            style: AppTextStyles.poppinsSemiBold(
              color: Theme.of(context).primaryColor,
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          const MadeByText(),
          SizedBox(
            height: size.height * 0.04,
          ),
        ],
      ),
    );
  }
}
