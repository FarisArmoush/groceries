import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:groceries/config/injection/injector.dart';
import 'package:groceries/firebase_options.dart';
import 'package:groceries/presentation/application/app.dart';
import 'package:groceries/presentation/models/flavor/flavor.dart';
import 'package:groceries/remote_config_service.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<Widget> mainCommon(Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final remoteConfig = FirebaseRemoteConfig.instance;
  final remoteConfigService = RemoteConfigService(remoteConfig);
  await remoteConfigService.init();
  await EasyLocalization.ensureInitialized();
  injector.registerSingleton<Flavor>(flavor);
  final directory = await getApplicationCacheDirectory();
  Hive.init(directory.path);
  return const App();
}
