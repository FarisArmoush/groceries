import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:talker_flutter/talker_flutter.dart';

final logger = _AppTalkerFlutter.init(
  logger: TalkerLogger(),
);

extension _AppTalkerFlutter on Talker {
  static Talker init({
    TalkerLogger? logger,
    TalkerObserver? observer,
    TalkerSettings? settings,
    TalkerFilter? filter,
  }) =>
      Talker(
        logger: (logger ?? TalkerLogger()).copyWith(
          formatter: const ColoredLoggerFormatter(),
          output: _defaultFlutterOutput,
        ),
        settings: settings,
        observer: observer,
        filter: filter,
      );

  static dynamic _defaultFlutterOutput(String message) {
    if (kIsWeb) {
      // ignore: avoid_print
      print(message);
      return;
    }

    final supportedPlatforms = {
      TargetPlatform.iOS,
      TargetPlatform.macOS,
      TargetPlatform.android,
    };
    final isPlatformSupported =
        supportedPlatforms.contains(defaultTargetPlatform);
    if (isPlatformSupported) {
      developer.log(message, name: ' ');
      return;
    }
    debugPrint(message);
  }
}
