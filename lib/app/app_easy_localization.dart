import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:groceries/app/app_view.dart';
import 'package:groceries/config/localization/remote_config_translations_loader.dart';

class AppEasyLocalization extends StatelessWidget {
  const AppEasyLocalization({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      assetLoader: const RemoteConfigTranslationsLoader(),
      fallbackLocale: const Locale('en'),
      useOnlyLangCode: true,
      path: 'The path parameter is unnecessary when using RemoteConfig',
      child: const AppView(),
    );
  }
}
