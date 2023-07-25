import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// An API class for initializing and handling
/// crash reporting using Firebase Crashlytics.
class FirebaseCrashlyticsApi {
  FirebaseCrashlyticsApi({
    FirebaseCrashlytics? crashlytics,
    PlatformDispatcher? platformDispatcher,
  })  : _crashlytics = crashlytics ?? FirebaseCrashlytics.instance,
        _platformDispatcher = platformDispatcher ?? PlatformDispatcher.instance;

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
