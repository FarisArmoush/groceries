import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:groceries/app/app.dart';
import 'package:groceries/bootstrap.dart';
import 'package:groceries/data/repositories/authentication_repository_impl.dart';
import 'package:groceries/data/repositories/remote_config_repository_impl.dart';
import 'package:groceries/firebase_options.dart';

void main() {
  bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    log('Main_Development_Falvor');
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    final authRepo = AuthenticationRepositoryImpl();
    await authRepo.authStateChanges.first;
    final remoteConfigRepo = RemoteConfigRepositoryImpl();
    await remoteConfigRepo.init();
    await EasyLocalization.ensureInitialized();
    return App(
      authRepository: authRepo,
    );
  });
}
