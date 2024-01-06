import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:groceries/app/app.dart';
import 'package:groceries/config/services/remote_config_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Widget> mainCommon() async {
  final remoteConfig = FirebaseRemoteConfig.instance;
  final remoteConfigService = RemoteConfigService(remoteConfig);
  await remoteConfigService.init();
  await EasyLocalization.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  return App(sharedPreferences: sharedPreferences);
}
