import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class CrashlyticsService {
  CrashlyticsService({
    required this.crashlytics,
    required this.platformDispatcher,
  });
  final FirebaseCrashlytics crashlytics;
  final PlatformDispatcher platformDispatcher;

  /// Initializes Crashlytics for Flutter.
  void initCrashlytics() =>
      FlutterError.onError = crashlytics.recordFlutterFatalError;

  /// Initializes platform errors handler.
  void initPlatformErrorsHandler() {
    platformDispatcher.onError = (error, stack) {
      crashlytics.recordError(error, stack, fatal: true);
      return true;
    };
  }
}
