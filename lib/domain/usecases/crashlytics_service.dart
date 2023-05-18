import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// A service class for initializing and handling
/// crash reporting using Firebase Crashlytics.
class FirebaseCrashlyticsService {
  /// Initializes Crashlytics for Flutter.
  ///
  /// This method sets [FlutterError.onError] to record Flutter fatal errors
  /// using Firebase Crashlytics.
  static void initCrashlytics() {
    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };
  }

  /// Initializes platform errors handler.
  ///
  /// This method sets [PlatformDispatcher.instance.onError] to record uncaught
  /// asynchronous errors that aren't handled by the Flutter framework using
  /// Firebase Crashlytics.
  static void initPlatformErrorsHandler() {
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }
}
