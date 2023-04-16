import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:groceries/app/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/app/data/repositories/remote_config_repository.dart';
import 'package:groceries/app/presentation/modules/app/widgets/app_bloc_provider.dart';
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

  runApp(
    App(authRepository: authRepo),
  );
}
