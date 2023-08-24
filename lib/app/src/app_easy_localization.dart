part of '../app.dart';

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
