import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/credits/widgets/credits_flutter_packages_text.dart';
import 'package:groceries/presentation/modules/credits/widgets/flutter_packages_list.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class CreditsView extends StatelessWidget {
  const CreditsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.credits),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        children: [
          const CreditsFlutterPackagesText(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const FlutterPackagesList(),
        ],
      ),
    );
  }
}
