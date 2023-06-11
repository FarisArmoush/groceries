import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:groceries/app/app.dart';
import 'package:groceries/bootstrap.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/data/repositories/firebase_crashlytics_repository.dart';
import 'package:groceries/data/repositories/remote_config_repository.dart';
import 'package:groceries/firebase_options.dart';

void main() {
  bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    log('Main_Production_Falvor');
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    final authRepo = FirebaseAuthRepository();
    await authRepo.authStateChanges.first;
    final remoteConfigRepo = RemoteConfigRepository();
    await remoteConfigRepo.init();
    await EasyLocalization.ensureInitialized();
    FirebaseCrashlyticsRepository().initPlatformErrorsHandler();
    FirebaseCrashlyticsRepository().initCrashlytics();
    return App(
      authRepository: authRepo,
    );
  });
}
