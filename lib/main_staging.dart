import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:groceries/app/app.dart';
import 'package:groceries/bootstrap.dart';
import 'package:groceries/config/services/remote_config_service.dart';
import 'package:groceries/data/data_sources/remote_data_sources/authentication_remote_data_source.dart';
import 'package:groceries/data/repositories/authentication_repository_impl.dart';
import 'package:groceries/data/repositories/firebase_crashlytics_repository_impl.dart';
import 'package:groceries/firebase_options.dart';

void main() {
  bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    log('Main_Staging_Falvor');
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    final authenticationRepository = AuthenticationRepositoryImpl(
      AuthenticationRemoteDataSource(),
    );
    await authenticationRepository.authStateChanges.first;
    final remoteConfig = FirebaseRemoteConfig.instance;
    final remoteConfigService = RemoteConfigService(remoteConfig);
    await remoteConfigService.init();
    await EasyLocalization.ensureInitialized();
    FirebaseCrashlyticsRepositoryImpl()
      ..initPlatformErrorsHandler()
      ..initCrashlytics();

    return App(
      authenticationRepository: authenticationRepository,
    );
  });
}
