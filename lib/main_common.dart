import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:groceries/app/app.dart';
import 'package:groceries/config/services/remote_config_service.dart';
import 'package:groceries/data/models/app_flavor/app_flavor.dart';
import 'package:groceries/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Widget> mainCommon(AppFlavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final remoteConfig = FirebaseRemoteConfig.instance;
  final remoteConfigService = RemoteConfigService(remoteConfig);
  await remoteConfigService.init();
  await EasyLocalization.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  return App(
    sharedPreferences: sharedPreferences,
    flavor: flavor,
  );
}
