import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';

/// A custom [AssetLoader] implementation that loads translations from
/// Firebase Remote Config.
final class RemoteConfigTranslationsLoader extends AssetLoader {
  /// Creates an instance of [RemoteConfigTranslationsLoader]
  const RemoteConfigTranslationsLoader();

  @override
  Future<JSON?> load(String path, Locale locale) async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    final localeKey = locale.languageCode;
    final languageData = remoteConfig.getString(localeKey);
    return jsonDecode(languageData) as JSON;
  }
}
