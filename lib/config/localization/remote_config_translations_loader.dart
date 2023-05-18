import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

/// {@template remote_config_translations_loader}
/// A custom [AssetLoader] implementation that loads translations
/// from Firebase Remote Config.
/// {@endtemplate}
class RemoteConfigTranslationsLoader extends AssetLoader {
  /// {@macro remote_config_translations_loader}
  const RemoteConfigTranslationsLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async {
    /// Intializes the Firebase Remote Config instance.
    final remoteConfig = FirebaseRemoteConfig.instance;

    /// The key for the language data in the remote config.
    final remoteConfigKey = locale.languageCode;

    /// Retrieves the language data from the remote config.
    final languageData = remoteConfig.getString(remoteConfigKey);

    /// Parses the language data as a JSON object and returns it.
    return jsonDecode(languageData) as Map<String, dynamic>;
  }
}
