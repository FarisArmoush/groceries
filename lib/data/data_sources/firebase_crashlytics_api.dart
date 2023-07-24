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
  ///
  /// This method sets [FlutterError.onError] to record Flutter fatal errors
  /// using Firebase Crashlytics.
  void initCrashlytics() =>
      FlutterError.onError = _crashlytics.recordFlutterFatalError;

  /// Initializes platform errors handler.
  ///
  /// This method sets [PlatformDispatcher.instance.onError] to record uncaught
  /// asynchronous errors that aren't handled by the Flutter framework using
  /// Firebase Crashlytics.
  void initPlatformErrorsHandler() {
    _platformDispatcher.onError = (error, stack) {
      _crashlytics.recordError(error, stack, fatal: true);
      return true;
    };
  }
}
