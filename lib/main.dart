import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:groceries/app/app_bloc_provider.dart';
import 'package:groceries/config/localization/remote_config_translations_loader.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/data/repositories/remote_config_repository.dart';
import 'package:groceries/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final authRepo = FirebaseAuthRepository();
  await authRepo.authStateChanges.first;
  final remoteConfigRepo = RemoteConfigRepository();
  await remoteConfigRepo.init();
  // FirebaseCrashlyticsService.initCrashlytics();
  // FirebaseCrashlyticsService.initPlatformErrorsHandler();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      assetLoader: RemoteConfigTranslationsLoader(),
      fallbackLocale: const Locale('en'),
      useOnlyLangCode: true,
      startLocale: const Locale('ar'),
      path: 'The path parameter is unnecessary when using RemoteConfig',
      child: App(authRepository: authRepo),
    ),
  );
}
