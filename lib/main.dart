import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/app.dart';
import 'package:groceries/app/app_bloc_observer.dart';
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
  // FirebaseCrashlyticsRepository()
  //   ..initCrashlytics()
  //   ..initPlatformErrorsHandler();

  await EasyLocalization.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  runApp(
    App(authRepository: authRepo),
  );
}
