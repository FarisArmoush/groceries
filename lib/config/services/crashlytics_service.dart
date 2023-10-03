import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class CrashlyticsService {
  CrashlyticsService({
    FirebaseCrashlytics? crashlytics,
    PlatformDispatcher? platformDispatcher,
  })  : _platformDispatcher = platformDispatcher ?? PlatformDispatcher.instance,
        _crashlytics = crashlytics ?? FirebaseCrashlytics.instance;

  final FirebaseCrashlytics _crashlytics;
  final PlatformDispatcher _platformDispatcher;

  /// Initializes Crashlytics for Flutter.
  void initCrashlytics() =>
      FlutterError.onError = _crashlytics.recordFlutterFatalError;

  /// Initializes platform errors handler.
  void initPlatformErrorsHandler() {
    _platformDispatcher.onError = (error, stack) {
      _crashlytics.recordError(error, stack, fatal: true);
      return true;
    };
  }
}
