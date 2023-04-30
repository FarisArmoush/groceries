import 'dart:convert';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

class RemoteConfigTranslationsLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    final remoteConfigKey = locale.languageCode;
    final languageData = remoteConfig.getString(remoteConfigKey);
    return jsonDecode(languageData) as Map<String, dynamic>;
  }
}
